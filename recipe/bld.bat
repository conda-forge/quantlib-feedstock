copy /y %RECIPE_DIR%\Platform.cmake %SRC_DIR%\cmake

cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% -D BUILD_SHARED_LIBS=ON -D Boost_USE_STATIC_LIBS=OFF -D Boost_USE_STATIC_RUNTIME=OFF -D QL_BUILD_EXAMPLES=OFF -D QL_BUILD_TEST_SUITE=OFF -D QL_BUILD_BENCHMARK=OFF %SRC_DIR%
if errorlevel 1 exit 1

cmake --build %SRC_DIR% --config Release --target ALL_BUILD
if errorlevel 1 exit 1

cmake --install %SRC_DIR% --config Release
if errorlevel 1 exit 1

REM file is malformed for some reason
copy /y %RECIPE_DIR%\quantlib.hpp %SRC_DIR%\%PREFIX%\Library\include\ql

copy /y %SRC_DIR%\ql\Release\QuantLib-x64-mt.dll %PREFIX%\Library\bin
copy /y %SRC_DIR%\ql\Release\QuantLib-x64-mt.exp %PREFIX%\Library\bin
