for ($i = 1; $i -le 3; $i++) {
    $fechaHora = Get-Date
    Write-Host "`n=== Verificación $i - $fechaHora ==="

    # Obtener adaptadores activos
    Get-NetAdapter | Where-Object {$_.Status -eq "Up"}

    # Condicional par / impar
    if ($i % 2 -eq 0) {
        Write-Host "Iteración $i es par"
    }
    else {
        Write-Host "Iteración $i es impar"
    }
}
