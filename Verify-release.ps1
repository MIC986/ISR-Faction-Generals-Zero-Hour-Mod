# Optional integrity check; no elevation or game-file writes. Requires Windows PowerShell/.NET.
$ErrorActionPreference = 'Stop'
$releaseRoot = $PSScriptRoot
$manifestPath = Join-Path $releaseRoot 'package-files.json'
$rsaVerifier = New-Object System.Security.Cryptography.RSACryptoServiceProvider
$rsaVerifier.FromXmlString([IO.File]::ReadAllText((Join-Path $releaseRoot 'release-public-key.xml')))
$signatureBytes = [Convert]::FromBase64String([IO.File]::ReadAllText((Join-Path $releaseRoot 'package-files.sig')))
$hashVerifier = [Security.Cryptography.SHA256]::Create()
if (-not $rsaVerifier.VerifyData([IO.File]::ReadAllBytes($manifestPath), $hashVerifier, $signatureBytes)) { throw 'The manifest signature does not match this public key.' }
$manifestData = Get-Content -LiteralPath $manifestPath -Raw | ConvertFrom-Json
foreach ($item in $manifestData.files) {
    $checkedFile = [IO.Path]::GetFullPath((Join-Path $releaseRoot $item.path))
    if (-not $checkedFile.StartsWith(([IO.Path]::GetFullPath($releaseRoot) + [IO.Path]::DirectorySeparatorChar), [StringComparison]::OrdinalIgnoreCase)) { throw 'A manifest path escapes the package.' }
    if ((Get-FileHash -LiteralPath $checkedFile -Algorithm SHA256).Hash.ToLowerInvariant() -ne $item.sha256) { throw ('Changed file: ' + $item.path) }
}
Write-Output ('Verified ISR Faction ' + $manifestData.build + ' (' + $manifestData.files.Count + ' files). Compare the public-key fingerprint with the original author release page.')
