$TargetZipFileName = "~\Downloads\$(Split-Path -Path $PSScriptRoot -Leaf).zip"
$compress = @{
  Path             = "$PSScriptRoot\README.md", "$PSScriptRoot\CHANGELOG.md", "$PSScriptRoot\manifest.json", "$PSScriptRoot\icon.png", "$PSScriptRoot\config"
  CompressionLevel = "Fastest"
  DestinationPath  = $TargetZipFileName
}
Compress-Archive @compress -Force
