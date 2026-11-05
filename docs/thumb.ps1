# Builds docs/img/thumbnail.jpg: powershell -File docs/thumb.ps1 -Src docs/img/thumbnail-art.png -Out docs/img/thumbnail.jpg (art: Gemini; walls forest green, black ceiling frame, green highlighter)
param([string]$Src, [string]$Out)
Add-Type -AssemblyName System.Drawing
$W = 1280; $H = 720
$im = [System.Drawing.Image]::FromFile($Src)
$bmp = New-Object System.Drawing.Bitmap $W, $H
$g = [System.Drawing.Graphics]::FromImage($bmp)
$g.InterpolationMode = 'HighQualityBicubic'; $g.SmoothingMode = 'AntiAlias'; $g.TextRenderingHint = 'AntiAliasGridFit'
$s = [Math]::Max($W / $im.Width, $H / $im.Height); $dw = $im.Width * $s; $dh = $im.Height * $s
$g.DrawImage($im, ($W - $dw) / 2, ($H - $dh) / 2, $dw, $dh)
# left fade so the title reads
$rect = New-Object System.Drawing.Rectangle -2, 0, 762, $H
$lg = New-Object System.Drawing.Drawing2D.LinearGradientBrush $rect, ([System.Drawing.Color]::FromArgb(200, 12, 6, 18)), ([System.Drawing.Color]::FromArgb(0, 12, 6, 18)), 0.0
$g.FillRectangle($lg, 0, 0, 755, $H)
$white = [System.Drawing.Brushes]::White
$soft = New-Object System.Drawing.SolidBrush ([System.Drawing.Color]::FromArgb(225, 236, 214, 240))
$accent = New-Object System.Drawing.SolidBrush ([System.Drawing.Color]::FromArgb(255, 150, 186, 128))
$fT = New-Object System.Drawing.Font 'Segoe UI Black', 92, ([System.Drawing.FontStyle]::Regular), ([System.Drawing.GraphicsUnit]::Pixel)
$fS = New-Object System.Drawing.Font 'Segoe UI Semibold', 34, ([System.Drawing.FontStyle]::Regular), ([System.Drawing.GraphicsUnit]::Pixel)
$fK = New-Object System.Drawing.Font 'Segoe UI', 24, ([System.Drawing.FontStyle]::Regular), ([System.Drawing.GraphicsUnit]::Pixel)
$hl = New-Object System.Drawing.SolidBrush ([System.Drawing.Color]::FromArgb(235, 44, 64, 38))  # forest green from the wall
$pts = [System.Drawing.PointF[]]@((New-Object System.Drawing.PointF 60, 316), (New-Object System.Drawing.PointF 512, 308), (New-Object System.Drawing.PointF 518, 356), (New-Object System.Drawing.PointF 56, 362))
$g.FillPolygon($hl, $pts)
$g.FillRectangle((New-Object System.Drawing.SolidBrush ([System.Drawing.Color]::FromArgb(255, 70, 104, 60))), 72, 178, 64, 8)
$g.DrawString('GhostTv', $fT, $white, 62, 192)
$g.DrawString('Claude drives your Fire TV', $fS, $soft, 70, 310)
$g.DrawString('Fire Stick + Samsung, over adb', $fK, $soft, 72, 360)
$g.DrawString(("Projectivy  $([char]0xB7)  debloat  $([char]0xB7)  macros"), $fK, $accent, 72, 396)
$enc = [System.Drawing.Imaging.ImageCodecInfo]::GetImageEncoders() | Where-Object { $_.MimeType -eq 'image/jpeg' }
$ep = New-Object System.Drawing.Imaging.EncoderParameters 1
$ep.Param[0] = New-Object System.Drawing.Imaging.EncoderParameter ([System.Drawing.Imaging.Encoder]::Quality), 88L
$bmp.Save($Out, $enc, $ep); $g.Dispose(); $bmp.Dispose(); $im.Dispose()
"saved $Out"
