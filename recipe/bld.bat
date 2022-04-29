
dir _h_env

msbuild QuantLib.sln /m /p:Configuration=Release;Platform=x64;IncludePath="%PREFIX%\Library\include;$(IncludePath)";OutDir="%PREFIX%\Library\"

