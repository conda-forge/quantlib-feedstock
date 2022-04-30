copy /y %RECIPE_DIR%\Platform.cmake %SRC_DIR%\cmake
copy /y %RECIPE_DIR%\Build.props %SRC_DIR%\

msbuild /p:Configuration=Release /p:Platform=x64 /m %SRC_DIR%
if errorlevel 1 exit 1

@REM REM file is malformed for some reason
@REM copy /y %RECIPE_DIR%\quantlib.hpp %SRC_DIR%\%PREFIX%\Library\include\ql

@REM copy /y %SRC_DIR%\ql\Release\QuantLib-x64-mt.dll %PREFIX%\Library\bin
@REM copy /y %SRC_DIR%\ql\Release\QuantLib-x64-mt.exp %PREFIX%\Library\bin
