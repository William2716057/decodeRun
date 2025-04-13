
$base64Content = Get-Content -Path "base64.txt" -Raw

$bytes = [System.Convert]::FromBase64String($base64Content)

$decodedText = [System.Text.Encoding]::UTF8.GetString($bytes)

#Write-Host $decodedText

Set-Content -Path "decoded.ps1" -Value $decodedText
