#!/bin/sh
### Copyright 1999-2016. Parallels IP Holdings GmbH. All Rights Reserved.

RELEASE_ID=$1

[ -f /usr/local/psa/version ] && exit 0

apt-get update
apt-get install -y wget
wget -q -O /root/ai http://autoinstall.plesk.com/plesk-installer
bash /root/ai \
    --select-product-id=plesk \
    --select-release-id=$RELEASE_ID \
    --installation-type=Typical
