#!/bin/bash
### Copyright 1999-2020. Plesk International GmbH.

LICENSE=$1

[ x`plesk bin settings -g psa_configured` = 'xtrue' ] && exit 0

plesk bin init_conf --init \
    -email changeme@example.com \
    -passwd changeme1Q** \
    -hostname-not-required

[ "x$LICENSE" != "x" ] && plesk bin license -i $LICENSE
plesk bin settings --set admin_info_not_required=true
plesk bin poweruser --off
plesk bin cloning -u -prepare-public-image true -reset-license false -reset-init-conf false -skip-update true
plesk bin ipmanage --auto-remap-ip-addresses true
echo VAGRANT > /usr/local/psa/var/cloud_id
