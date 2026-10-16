# Installation and removal

Requirements: Windows, an owned working Zero Hour 1.04 installation, normal GenLauncher (tested with 1.0.1.0), and Microsoft Visual C++ 2015-2022 x86 runtime. The game directory must support GenLauncher's file links. This Windows runtime uses the original game's DirectX 8, Bink and Miles dependencies from the player's installation. Linux, Wine and macOS packages are not supplied.

Extract the full package. Close GenLauncher and all game processes. Run Install-ISR-Faction.exe, select the game directory and install. The installer copies required files from the player's own game and registers ISR Faction 1.0.0 in the normal launcher. It backs up the existing launcher client and configuration, validates writes and preserves edited files rather than silently replacing them. It never downloads the retail game. The installation needs additional disk space roughly comparable to one Zero Hour data copy.

Launch through normal GenLauncher. Select ISR Faction and version 1.0.0. Enable the launcher's modded executable option if it has been turned off. Remove any manually entered -mod argument. Do not combine this release with unrelated faction mods, GenTool injection or different engine replacements. Start a fresh Skirmish. No testing armies, prebuilt bases or automatic scenarios are supplied in the normal client.

Profiles: %LOCALAPPDATA%/ISR Faction/1.0.0. Existing display options are copied when available, but saves are kept separate. To use fullscreen, turn off Windowed in normal GenLauncher. Runtime startup details are in last-launch.log in this profile. Include this log, army, map, exact action and a fresh save when reporting a bug.

To uninstall, close GenLauncher and the game, run the same installer and choose Remove. It removes only this version's unedited installed files and restores its saved launcher client. Leave previous versions installed if desired. Remove versions newest first when removing the entire ISR series. Edited files and profile saves are preserved.

If the installer says an original archive or cursor is missing, repair the original game first. If skirmish freezes, check that the full package was installed and that no other mod is mounted. If an antivirus scans an unsigned executable, allow the scan to finish and compare the package checksum. A named threat should be investigated; do not disable protection or create broad exclusions. The package cannot promise that antivirus reputation prompts will disappear. A standard user's protected game folder can require administrator approval; no security settings are changed automatically.

Normal GenLauncher project and manual-mod features: https://github.com/p0ls3r/GenLauncher . This release uses its own installer because it also needs a matched engine and isolated game profile.
