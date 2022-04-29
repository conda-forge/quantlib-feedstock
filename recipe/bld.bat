
dir _h_env

msbuild QuantLib.sln /m /p:Configuration=Release /p:IncludePath="%PREFIX%\Library\include;$(IncludePath)"

