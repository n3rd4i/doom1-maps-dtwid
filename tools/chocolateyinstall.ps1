$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'ftp://ftp.fu-berlin.de/pc/games/idgames/levels/doom/megawads/dtwid.zip'
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = "$(Join-Path $toolsDir wad)"
  url           = $url
  checksum      = '122B50713026A05423776E5C1330770F74A371D4236C63497F0F7F64BC9A62CB'
  checksumType  = 'sha256'
}
Install-ChocolateyZipPackage @packageArgs
