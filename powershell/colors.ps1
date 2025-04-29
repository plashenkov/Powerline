$label = "PowerShell"
$bold = 1

$e = $([char]27)
foreach ($color in (0..255)) {
  Write-Host "`n$e[$bold;48;5;$color;38;5;231m $label $e[;38;5;$color;48;5;240m$e[38;5;252m ~ $e[;38;5;240m$e[m $color"
}
