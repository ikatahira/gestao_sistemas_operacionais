$livreGB = (Get-PSDrive C).Free / 1GB

if ($livreGB -lt 10) {
    Write-Host "🔴 CRÍTICO: apenas $([math]::Round($livreGB,1)) GB livre!" -ForegroundColor Red
} elseif ($livreGB -lt 30) {
    Write-Host "🟡 AVISO: $([math]::Round($livreGB,1)) GB livre" -ForegroundColor Yellow
} else {
    Write-Host "🟢 OK: $([math]::Round($livreGB,1)) GB livre" -ForegroundColor Green
}