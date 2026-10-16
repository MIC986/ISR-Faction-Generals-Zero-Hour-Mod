# Installation

## Requirements

- Windows PC
- A *Command & Conquer: Generals – Zero Hour* installation updated to version 1.04
- GenLauncher
- Microsoft Visual C++ 2015–2022 Redistributable (x86)
- .NET Framework 4.5 or later

## Install

1. Exit Zero Hour and close GenLauncher.
2. Run **Install-ISR-Faction-1.0.0.exe**. Approve the Windows administrator prompt if Windows asks; setup needs access to the game and GenLauncher folders.
3. In the installer, browse to the Zero Hour installation folder. Choose the folder that contains both `GenLauncher.exe` and `INIZH.big`.
4. Select **Install into GenLauncher** and let setup finish.
5. Start your GenLauncher. Choose **ISR Faction 1.0.0**, launch the game.

## Remove

1. Close Zero Hour and GenLauncher.
2. Run **Install-ISR-Faction-1.0.0.exe** again.
3. Choose **Remove this version** and follow the prompts.

This removes only the current version of this mod.

## Troubleshooting

- **The installer cannot find the game:** Select the actual Zero Hour folder containing `GenLauncher.exe` and `INIZH.big`, not a shortcut, desktop folder, or the installer download folder.
- **The game reports missing runtime components:** Install the Microsoft Visual C++ 2015–2022 Redistributable (x86) and .NET Framework 4.5 or later, then run setup again.
- **Security software scans the installer:** The EXE bundles the installer and game-mod payload, so security software may take a moment to inspect it. Use the release checksums to confirm the downloaded file matches the published release. Do not disable your security software.
