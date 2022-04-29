copy /y %RECIPE_DIR%\Platform.cmake %SRC_DIR%\cmake

cmake -G "NMake Makefiles" -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% -D BUILD_SHARED_LIBS=ON -D Boost_USE_STATIC_LIBS=OFF -D Boost_USE_STATIC_RUNTIME=OFF -D QL_BUILD_EXAMPLES=OFF -D QL_BUILD_TEST_SUITE=OFF -D QL_BUILD_BENCHMARK=OFF %SRC_DIR%
if errorlevel 1 exit 1

nmake
if errorlevel 1 exit 1

nmake install
if errorlevel 1 exit 1

dir %PREFIX\Library
dir %PREFIX\Library\bin
dir %PREFIX\Library\lib
@REM %PREFIX%\Library\bin\QuantLib-test-suite-x64-mt.exe --log_level=message --build_info=yes -- --faster  # [win]
