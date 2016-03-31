#!/bin/sh

plesk db "replace into misc values('autoupdater_last_run_date', '2001-01-01T00:00:00+07:00')"
plesk daily CheckForUpdates
plesk daily InstallUpdates
