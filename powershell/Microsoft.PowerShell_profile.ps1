function Prompt {
  $label = "PowerShell"
  $color = 12
  $adminColor = 88
  $bold = 1

  $principal = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent())
  if ($principal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    $color = $adminColor
  }

  $path = $pwd.Path
  if ($path.StartsWith($HOME)) {
    $path = "~" + $path.Substring($HOME.Length)
  }

  $e = $([char]27)
  return "`n$e[$bold;48;5;$color;38;5;231m $label $e[;38;5;$color;48;5;240m$e[38;5;252m $path $e[;38;5;240m$e[m "
}
