

Get-ExecutionPolicy
Set-ExecutionPolicy remotesigned


<# Get-ExecutionPolicy -list #>
<# Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -scope CurrentUser #>
<# Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -scope LocalMachine #>

<# Het kan dat scripts niet mogen worden uitgevoerd. (Op te lossen met Set-ExecutionPolicy remotesigned?) #>
#Read more: https://www.sharepointdiary.com/2014/03/fix-for-powershell-script-cannot-be-loaded-because-running-scripts-is-disabled-on-this-system.html#ixzz7nojL3vJM #>


pause
cls

Echo "--------------------------------------------------------------------"
Echo ""
Echo "Plaats de Installatiemap en Macrium Reflect (nodig voor de eerste Image naar de nieuwe Desktop"
Echo ""
If(Test-Path "C:\Users\lexvi\OneDrive\~PC\Installatiemap") { "Het pad naar Onedrive bestaat" } Else { "Het pad naar Onedrive bestaat NIET!" }  
If(Test-Path "C:\users\lexvi\desktop") { "Het pad naar de nieuwe Desktop bestaat" } Else { "Het pad naar de nieuwe Desktop bestaat NIET!" }
Echo ""
pause
xcopy /y C:\Users\lexvi\OneDrive\~PC\Installatiemap C:\users\lexvi\desktop\Installatiemap\ /E /H /C /I
Echo ""
Echo ""
xcopy /y C:\Users\lexvi\OneDrive\~PC\Software\Macrium\*.* C:\users\lexvi\desktop\
Echo "--------------------------------------------------------------------"
Echo "" 
Echo "" 

<# Echo "Is de Installatiemap naar de nieuwe Desktop gekopieerd?
Paden (van bron) zijn in dit stadium onzeker dus dit moet handmatig" #> 

pause
cls
Echo "--------------------------------------------------------------------"
Echo ""
Echo "Plaats de Bureaubladachtergronden van:
C:\users\lexvi\desktop\Installatiemap\Achtergronden naar:
C:\Windows\Web\Wallpaper\Achtergronden"Echo "" 
Echo ""
pause
xcopy /y C:\users\lexvi\desktop\Installatiemap\Achtergronden C:\Windows\Web\Wallpaper\Achtergronden\
Echo ""
Echo ""
Echo "--------------------------------------------------------------------"
Echo ""
pause
cls
Echo "--------------------------------------------------------------------"
Echo ""
Echo "Plaats de Bestanden (Afsluiten.ahk en E-mail.ahk) van AutoHotKey van:

C:\users\lexvi\desktop\Installatiemap\ naar:
C:\Users\lexvi\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"Echo "" 
If(Test-Path "C:\users\lexvi\desktop\Installatiemap\Afsluiten.ahk") { "Het pad Bestaat (C:\users\lexvi\desktop\Installatiemap\Afsluiten.ahk)" } Else { "Het pad bestaat NIET! (C:\users\lexvi\desktop\Installatiemap\Afsluiten.ahk" }
If(Test-Path "C:\users\lexvi\desktop\Installatiemap\E-mail.ahk") { "Het pad Bestaat (C:\users\lexvi\desktop\Installatiemap\E-mail.ahk)" } Else { "Het pad bestaat NIET! (C:\users\lexvi\desktop\Installatiemap\E-mail.ahk" }
If(Test-Path "C:\Users\lexvi\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup") { "Het pad Bestaat (C:\Users\lexvi\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup)" } Else { "Het pad bestaat NIET! (C:\Users\lexvi\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup" }
Echo ""
pause
xcopy /y C:\users\lexvi\desktop\Installatiemap\*.ahk "C:\Users\lexvi\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup" 
<# Quotes "" eromheen als er spaties in het pad voorkomen! #>
<# hopen dat pad overeenkomt #>
Echo ""
Echo ""
Echo "--------------------------------------------------------------------"
Echo ""
pause
cls
Echo "--------------------------------------------------------------------"
Echo ""
Echo "Plaats diverse Shortcuts naar de nieuwe Desktop:
BIOS.lnk
FIN.ps1
Gebalanceerd.lnk
Meteen naar BIOS.txt
Nooit.lnk
PC.ps1
Restart.lnk
Shutdown.lnk"
pause
Echo ""Echo ""xcopy /y C:\users\lexvi\desktop\Installatiemap\Bios.lnk C:\users\lexvi\desktop\xcopy /y C:\users\lexvi\desktop\Installatiemap\FIN.ps1 C:\users\lexvi\desktop\xcopy /y C:\users\lexvi\desktop\Installatiemap\Gebalanceerd.lnk C:\users\lexvi\desktop\xcopy /y "C:\users\lexvi\desktop\Installatiemap\Meteen naar BIOS.txt" C:\users\lexvi\desktop\xcopy /y C:\users\lexvi\desktop\Installatiemap\Nooit.lnk C:\users\lexvi\desktop\xcopy /y C:\users\lexvi\desktop\Installatiemap\PC.ps1 C:\users\lexvi\desktop\xcopy /y C:\users\lexvi\desktop\Installatiemap\Restart.lnk C:\users\lexvi\desktop\xcopy /y C:\users\lexvi\desktop\Installatiemap\Shutdown.lnk C:\users\lexvi\desktop\Echo ""
Echo ""
Echo "--------------------------------------------------------------------"
Echo ""
Echo ""
Echo ""
Echo "Klaar!"




