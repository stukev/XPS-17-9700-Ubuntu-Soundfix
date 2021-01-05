#get full path
SCRIPT=$(readlink -f $0)
SCRIPTPATH=`dirname $SCRIPT`

# remove existing intel sof firmware files
rm /usr/lib/firmware/intel/sof/ -rf || true
rm /usr/lib/firmware/intel/sof-tplg/ -rf || true

# add new intel sof firmware files
cp "$SCRIPTPATH"/data/intel/sof/* /usr/lib/firmware/intel/ -r

# remove existing alsa ucm2 files
rm /usr/share/alsa/ucm2/sof-soundwire -rf || true

# add new alsa ucm2 files
cp "$SCRIPTPATH"/data/alsa/sof-soundwire/ /usr/share/alsa/ucm2/ -r
