net stop AdAppMgrSvc

taskkill /IM "AdAppMgrSvc.exe" /F
taskkill /IM "AdAppMgrUpdater.exe" /F

del C:\Programdata\Autodesk\AutodeskDesktopApp.ini
del  "%appdata%\Autodesk\Autodesk Desktop App\AutodeskDesktopApp"
del  "%appdata%\..\Local\Autodesk\Web Services\LoginState.xml"

regedit /i registryclean.reg

start https://emsfs.autodesk.com/utility/adskapp/landing/files/AdskappBootstrap/Autodesk_Desktop_App_Bootstrap.exe
