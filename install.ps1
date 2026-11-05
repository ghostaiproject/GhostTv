# Copies the firetv skill into Claude Code's skills folder.
$dst = Join-Path $HOME '.claude\skills\firetv'
New-Item -ItemType Directory -Force $dst | Out-Null
Copy-Item (Join-Path $PSScriptRoot 'skill\*') $dst -Force
"installed firetv skill -> $dst"
if (-not (Get-Command python -ErrorAction SilentlyContinue)) { 'note: install Python 3 for Samsung TV control (winget install Python.Python.3.12)' }
