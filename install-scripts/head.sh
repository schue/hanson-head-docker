#!/bin/sh

WORKSPACE=/srv/head

echo "Installing H.E.A.D. in $WORKSPACE"

wget https://raw.githubusercontent.com/hansonrobotics/HEAD/master/scripts/hrtool -O /tmp/hrtool
chmod +x /tmp/hrtool
echo 'y' | /tmp/hrtool -w $WORKSPACE
/tmp/hrtool -i
/tmp/hrtool -G
rm /tmp/hrtool
$WORKSPACE/HEAD/scripts/hrtool -B
