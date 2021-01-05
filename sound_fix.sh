# check permissions
if [ `id -u` = 0 ] ; then
        echo "Script needs to be run as sudo or root"
fi

# get full path
SCRIPT=$(readlink -f $0)
SCRIPTPATH=`dirname $SCRIPT`

# remove existing intel sof firmware files
rm /usr/lib/firmware/intel/sof/ -rf || true
rm /usr/lib/firmware/intel/sof-tplg/ -rf || true

# add new intel sof firmware files
cp "$SCRIPTPATH/data/intel/"* /usr/lib/firmware/intel/ -r

# remove existing alsa ucm2 files
rm /usr/share/alsa/ucm2/sof-soundwire -rf || true

# add new alsa ucm2 files
cp "$SCRIPTPATH/data/alsa/sof-soundwire/" /usr/share/alsa/ucm2/ -r
