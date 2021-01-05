# XPS-17-9700-Ubuntu-Soundfix
A simple script to install the necessary firmware to fix sound output (dummy sound). This works on Ubuntu 20.04 and may or may not work on other versions.

## General info
All necessary files are included in this git repo. I've opted for this because some of the tutorials for this fix link to packages which 404 as they've been updated since.

You will also need a kernel that supports the new firmware. I opted for linux-oem-20.04 since that's a known one to include some Dell fixes.

## Setup
1. Install the necessary kernel with `sudo apt install linux-oem-20.04`
2. Clone the repo `git clone https://github.com/stukev/XPS-17-9700-Ubuntu-Soundfix.git`
3. Run the fix `sudo XPS-17-9700-Ubuntu-Soundfix/sound_fix.sh`
4. Reboot. If you still have no sound check whether you use the right kernel with `uname -r`
5. Remove the repo `rm XPS-17-9700-Ubuntu-Soundfix -rf`

Future updates from Ubuntu may break this fix. But you can always run it again if that happens.
