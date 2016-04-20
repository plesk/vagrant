#!/bin/sh
### Copyright 1999-2016. Parallels IP Holdings GmbH. All Rights Reserved.

[ x`plesk bin settings -g psa_configured` = 'xtrue' ] && exit 0

plesk bin init_conf --init \
    -email changeme@example.com \
    -passwd changeme \
    -hostname-not-required

plesk bin settings --set admin_info_not_required=true
plesk bin poweruser --off
plesk bin cloning -u -prepare-public-image true -reset-license false -reset-init-conf false -skip-update true
plesk bin ipmanage --auto-remap-ip-addresses true
