$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.mql5.com/cdn/web/metaquotes.software.corp/mt5/mt5setup.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'MetaTrader5'
  silentArgs   = '/auto'
  validExitCodes= @(1)
}

Install-ChocolateyPackage @packageArgs










    








