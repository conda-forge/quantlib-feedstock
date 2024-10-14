mkdir build
cd build

cmake -G Ninja -D CMAKE_BUILD_TYPE=Release -D CMAKE_MSVC_RUNTIME_LIBRARY=MultiThreadedDLL -D CMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% -D BUILD_SHARED_LIBS=ON -D Boost_USE_STATIC_LIBS=OFF -D Boost_USE_STATIC_RUNTIME=OFF -D QL_BUILD_EXAMPLES=OFF -D QL_BUILD_TEST_SUITE=OFF -D QL_BUILD_BENCHMARK=OFF %SRC_DIR%
if errorlevel 1 exit 1

ninja
if errorlevel 1 exit 1

ninja install
if errorlevel 1 exit 1
