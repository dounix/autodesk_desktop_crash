@echo off
echo "This will attempt to uninstall and clean the autodesk desktop app"
echo "It follows the process in https://knowledge.autodesk.com/search-result/caas/sfdcarticles/sfdcarticles/Install-Autodesk-Desktop-App.html"
echo
echo "press enter to continue, or close this window to abort"
pause

echo "stopping the autodesk service..."
echo "...press enter to continue"
pause
net stop AdAppMgrSvc

echo "killing the running autodesk desktop processes"
echo "...press enter to continue"
pause

taskkill /IM "AdAppMgrSvc.exe" /F
taskkill /IM "AdAppMgrUpdater.exe" /F

echo "cleaning up Autodesk desktop files"
echo "...press enter to continue"
pause
del C:\Programdata\Autodesk\AutodeskDesktopApp.ini
del "%APPDATA%\Autodesk\Autodesk Desktop App\AutodeskDesktopApp"
del "%LOCALAPPDATA%\Autodesk\Web Services\LoginState.xml"

echo "removing registry entries"
echo "You will be prompted to import a registry file"
pause
start registryclean.reg

pause 
echo "This will start a browser to download the Autodesk desktop app install"
pause
start https://emsfs.autodesk.com/utility/adskapp/landing/files/AdskappBootstrap/Autodesk_Desktop_App_Bootstrap.exe

