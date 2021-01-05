# remove existing intel sof firmware files
rm /usr/lib/firmware/intel/sof/ -rf || true
rm /usr/lib/firmware/intel/sof-tplg/ -rf || true

# add new intel sof firmware files
cp ./data/intel/sof/* /usr/lib/firmware/intel/

# remove existing alsa ucm2 files
rm /usr/share/alsa/ucm2/sof-soundwire -rf || true

# add new alsa ucm2 files
cp ./data/alsa/sof-soundwire/ /usr/share/alsa/ucm2/
