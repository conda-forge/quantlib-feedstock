
msbuild QuantLib.sln /m /p:Configuration=Release /p:Platform=x64 /p:IncludePath="%PREFIX%\Library\include;$(IncludePath)" /p:OutDir="%PREFIX%\Library\"
