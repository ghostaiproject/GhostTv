# GhostTv handoff

## State (2026-11-05)
- Fire Stick 4K Max (2nd gen), Fire OS 8.1.8.5, 32-bit (armeabi-v7a), API 30. ADB over Wi-Fi authorized. Samsung TU690T paired (token local).
- Rule: Claude does every step over adb / samsung.py; user only does security grants (Fire OS hides 3rd-party accessibility toggles → user runs the `settings put secure enabled_accessibility_services ...` command) and on-TV Allow prompts.
- HDMI drop on Netflix/Prime: fixed on the TV side (Input Signal Plus / Anynet+). Stick CEC still on.
- Debloat: groups track, shop, unused, recs, extra applied (32 apps; prism kept, Appstore needs it). `restore` undoes.
- UX preset applied (`firetv.ps1 ux`): animations 0.5x, ad tracking limited, usage data off. Featured autoplay: no adb key (moot with Projectivy).
- Projectivy Launcher 4.72 installed (APKMirror arm64 bundle, base + xhdpi only); accessibility override ON → Home opens Projectivy. Universal build for updates: github.com/spocky/miproja1/releases.

## Next
- Projectivy setup over adb + keys (`firetv.ps1 key`, `shot`, `uiautomator dump` to read the screen): finish onboarding, build rows (Netflix, Prime, YouTube, Crave, Bell TV, Plex, Kodi), hide Amazon rows, wallpaper.
- Optional: `firetv.ps1` action for `uiautomator dump` text reads (cheaper than screenshots).
