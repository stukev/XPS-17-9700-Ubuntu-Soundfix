# XPS-17-9700-Ubuntu-Soundfix
A simple script to install the necessary firmware to fix sound output (dummy sound). This works on Ubuntu 20.04 and may or may not work on other versions.

## General info
All necessary files are included in this git repo. I've opted for this because some of the tutorials for this fix link to packages which 404 as they've been updated since.

You will also need a kernel that supports the new firmware. I opted for linux-oem-20.04 since that's a known one to include some Dell fixes. Currently 5.6.0-1056-oem is the one that works best, so I suggest you use that one.

## Tested Kernels
- 5.6.0-1056-oem No issues
- 5.10.0-1029-oem Sound works but [has microphone issues](https://github.com/stukev/XPS-17-9700-Ubuntu-Soundfix/issues/3)
- 5.11.0-19 Should have no issues [according to Launchpad](https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1912673/comments/24)

## Setup
1. Install the necessary kernel with `sudo apt install linux-oem-20.04`
2. Clone the repo `git clone https://github.com/stukev/XPS-17-9700-Ubuntu-Soundfix.git`
3. Run the fix `sudo sh XPS-17-9700-Ubuntu-Soundfix/sound_fix.sh`
4. Remove the repo `rm XPS-17-9700-Ubuntu-Soundfix -rf`
5. Reboot and **select your new OEM kernel in GRUB** under 'Advanced options'.
6. If you still have no sound, check whether you used the right kernel with `uname -r`. If you did, consider opening an [issue](https://github.com/stukev/XPS-17-9700-Ubuntu-Soundfix/issues) in this git repo and maybe we can solve it together.

Future updates from Ubuntu may break this fix. But you can always run it again if that happens.
