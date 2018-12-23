@echo off
where gcc>nul
cls
if errorlevel 1 (
echo gcc NOT FOUND in your computer!!
echo Press any key to start installation!
pause>nul
goto install
) else (
echo Detected gcc Environment..
echo Start to compile!!
goto compile
)



:install
cls
echo Please download and run the gcc install program.
ping 127.0.0.1 >nul
start https://obs-410c.obs.myhwclouds.com/setup/tdm64-gcc-5.1.0-2.exe
ping 127.0.0.1 >nul
cls
echo After install, Please restart this script to compile!!&&pause&&exit


:compile
md game>nul
cls
echo compiling...
gcc -O2 -s 1717608_3.c -o game\game
cls
echo compile finished! The program is in the game folder!
pause

exit


