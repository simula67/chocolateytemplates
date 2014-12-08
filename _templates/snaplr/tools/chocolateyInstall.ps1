$packageName = 'snaplr'
$installerType = 'EXE'
$url = 'http://www.vessenger.com/assets/downloads/Snaplr.exe'
$silentArgs = '-silent  -eulaAccepted -location "C:\Program Files (x86)\Snaplr" -desktopShortcut -programMenu -allowDownload'
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes