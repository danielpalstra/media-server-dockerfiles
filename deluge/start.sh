#! /bin/sh

set -e

rm -f /mnt/state/deluged.pid

deluged -c /mnt/state -L info -l /mnt/state/deluged.log
deluge-web -c /mnt/state
