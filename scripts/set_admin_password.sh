#!/bin/bash
### Copyright 1999-2020. Plesk International GmbH.

while true; do
    sleep 1
    plesk bin cloning --status
    [ $? -eq 0 ] && break
done

plesk bin admin --set-password -passwd "changeme1Q**"