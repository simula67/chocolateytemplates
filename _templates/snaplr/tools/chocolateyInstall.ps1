$packageName = 'snaplr'
$installerType = 'EXE'
$url = 'http://www.vessenger.com/assets/downloads/Snaplr.exe'
$silentArgs = "-silent -eulaAccepted -location ""$env:ProgramFiles"" -desktopShortcut -programMenu -allowDownload"
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes