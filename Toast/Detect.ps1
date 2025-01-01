$DownloadsFiles = get-childitem -Path $env:USERPROFILE\Downloads -File -Recurse | Where-Object {$_.Length -gt 1MB}
If ($DownloadsFiles.count -eq 0) {
    Write-Output "Empty download folder"
    exit 0
}
else {
    Write-Output "Files found in users download folder - sending toast notification"
    exit 1
}