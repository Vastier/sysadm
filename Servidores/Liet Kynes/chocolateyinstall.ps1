$packageArgs = @{
  packageName            = 'googlechrome'
  fileType               = 'MSI'
  filelocation           = 'Join-Path $toolsDir'
  file                   = 'googlechromestandaloneenterprise.msi'
  file64                 = 'googlechromestandaloneenterprise64.msi'
  checksum               = '3e420702abdc16cdaae89e3d53e3fa9d941d3c9365755f3abe382144d8f1174c'
  checksum64             = '904e5b102d27199f7dc8e32d0c3f45df57b3747fa684bfdff54f450b85a638d7'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = "/quiet /norestart /l*v `"$($env:TEMP)\$($env:chocolateyPackageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes         = @(0)
}

Install-ChocolateyInstallPackage @packageArgs
