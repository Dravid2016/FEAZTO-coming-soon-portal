Add-Type -AssemblyName System.Drawing

$inPath = (Resolve-Path "public/indian-art-no-text.png").Path
$bmp = [System.Drawing.Bitmap]::FromFile($inPath)

$samplePoints = @(
    @{X=250; Y=270},
    @{X=250; Y=320},
    @{X=220; Y=300},
    @{X=320; Y=300},
    @{X=450; Y=300},
    @{X=550; Y=300},
    @{X=600; Y=320}
)

foreach ($pt in $samplePoints) {
    $c = $bmp.GetPixel($pt.X, $pt.Y)
    Write-Host "Pixel at ($($pt.X), $($pt.Y)): R=$($c.R), G=$($c.G), B=$($c.B), A=$($c.A)"
}

$bmp.Dispose()
