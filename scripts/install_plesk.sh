#!/bin/bash
### Copyright 1999-2020. Plesk International GmbH.

[ -f /usr/local/psa/version ] && exit 0

apt-get update
apt-get install -y wget
wget -q -O /root/ai http://autoinstall.plesk.com/plesk-installer
bash /root/ai \
    --all-versions \
    --select-product-id=plesk \
    --select-release-latest \
    --installation-type=Typical

apt-get clean
rm -rf /root/ai /root/parallels
