$package="Snaplr"
$app = Get-WmiObject -Class Win32_Product | Where-Object { 
    $_.Name -match $package 
}
if( $app )
{
   $uninstallReturnValue = $app.Uninstall().ReturnValue
   If($uninstallReturnValue -eq 0)
   {
      Write-ChocolateySuccess $package
   }
   else
   {
      Write-ChocolateyFailure $package "$($_.Exception.Message)"
   }
}
else
{
   Write-ChocolateyFailure "$package is not installed"
}