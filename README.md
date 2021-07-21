# XPS-17-9700-Ubuntu-Soundfix
A simple script to install the necessary firmware to fix sound output (dummy sound). This works on Ubuntu 20.04 and may or may not work on other versions.

## General info
All necessary files are included in this git repo. I've opted for this because some of the tutorials for this fix link to packages which 404 as they've been updated since.

You will also need a kernel that supports the new firmware. I opted for linux-oem-20.04 since that's a known one to include some Dell fixes. Currently 5.6.0-1056-oem is the only one with both Sound and Microphone working. Please open an issue if you find a newer one that works.

## Tested Kernels
| Kernel | Sound | Microphone |
| ------ | ----- | ---------- |
| 5.6.0-1056-oem | Works | Works |
| 5.10.0-1029-oem | Works | [Broken](https://github.com/stukev/XPS-17-9700-Ubuntu-Soundfix/issues/3) |
| 5.10.0-1033-oem | Works | [Broken](https://github.com/stukev/XPS-17-9700-Ubuntu-Soundfix/issues/3) |
| 5.10.0-1034-oem | Works | [Broken](https://github.com/stukev/XPS-17-9700-Ubuntu-Soundfix/issues/3) |

## Setup
1. Install the necessary kernel with `sudo apt install linux-oem-20.04`
2. Clone the repo `git clone https://github.com/stukev/XPS-17-9700-Ubuntu-Soundfix.git`
3. Run the fix `sudo sh XPS-17-9700-Ubuntu-Soundfix/sound_fix.sh`
4. Remove the repo `rm XPS-17-9700-Ubuntu-Soundfix -rf`
5. Reboot and **select your new OEM kernel in GRUB** under 'Advanced options'.
6. If you still have no sound, check whether you used the right kernel with `uname -r`. If you did, consider opening an [issue](https://github.com/stukev/XPS-17-9700-Ubuntu-Soundfix/issues) in this git repo and maybe we can solve it together.

Future updates from Ubuntu may break this fix. But you can always run it again if that happens.
