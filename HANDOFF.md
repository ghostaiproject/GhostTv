# GhostTv handoff

## State (2026-11-05)
- Fire Stick 4K Max (2nd gen), Fire OS 8.1.8.5, 32-bit (armeabi-v7a), API 30. ADB over Wi-Fi authorized. Samsung TU690T paired (token local).
- Rule: Claude does every step over adb / samsung.py; user only does security grants (Fire OS hides 3rd-party accessibility toggles → user runs the `settings put secure enabled_accessibility_services ...` command) and on-TV Allow prompts.
- HDMI drop on Netflix/Prime: fixed on the TV side (Input Signal Plus / Anynet+). Stick CEC still on.
- Debloat: groups track, shop, unused, recs, extra applied (32 apps; prism kept, Appstore needs it). `restore` undoes.
- UX preset applied (`firetv.ps1 ux`): animations 0.5x, ad tracking limited, usage data off. Featured autoplay: no adb key (moot with Projectivy).
- Projectivy set up (2026-11-05): Watch row = Netflix, Prime, YouTube, Crave, Fibe TV, Tou.tv, TVA+, Plex, Kodi (Custom order = tick order); TV Apps + Mobile Apps rows hidden; Settings shortcuts row kept; wallpaper = Default (was Reddit random).
- Fast control: `go <keys>` / `run <macro>` (one monkey run per call, 640px jpg), `ui` text dump; screen maps + macros in `skill/nav/`. uiautomator dumps make Projectivy toast "Accessibility service" (harmless).
- Projectivy Launcher 4.72 installed (APKMirror arm64 bundle, base + xhdpi only); accessibility override ON → Home opens Projectivy. Universal build for updates: github.com/spocky/miproja1/releases.

## Next
- None open. Ideas: tile long-press menu is unreachable over adb (longpress launches); Projectivy backup/restore file could store this layout.
