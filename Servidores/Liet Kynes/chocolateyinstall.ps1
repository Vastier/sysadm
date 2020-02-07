$packageName= 'fusionagent'
$toolsDir = Split-Path $MyInvocation.MyCommand.Definition


$packageArgs = @{
  packageName            = 'fusionagent'
  fileType               = 'exe'
  file                   = "$toolsDir\fusioninventory-agent_windows-x86_2.5.2.exe"
  file64                 = "$toolsDir\fusioninventory-agent_windows-x64_2.5.2.exe"
  checksum               = 'b560945c5f7615300c48fe5c9305d268806b77168fa013dfea155a10b8f80ffd'
  checksum64             = 'd2bc50020e4947ddb2fc03256bd3b6c423541daf498a4e00925cdaf6bb79431d'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = "/acceptlicense /runnow /server='' /S"
  validExitCodes         = @(0)
}

Install-ChocolateyInstallPackage @packageArgs
