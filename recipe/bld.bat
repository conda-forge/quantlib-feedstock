@REM cmake -G "NMake Makefiles" -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% -D BUILD_SHARED_LIBS=ON -D Boost_USE_STATIC_LIBS=OFF -D Boost_USE_STATIC_RUNTIME=OFF -D QL_BUILD_EXAMPLES=OFF -D QL_BUILD_BENCHMARK=OFF %SRC_DIR%
@REM if errorlevel 1 exit 1

@REM nmake
@REM if errorlevel 1 exit 1

@REM nmake install
@REM if errorlevel 1 exit 1

msbuild QuantLib.sln /m /p:Configuration=Release

.\test-suite\bin\QuantLib-test-suite-x64-mt.exe --log_level=message --build_info=yes -- --faster
