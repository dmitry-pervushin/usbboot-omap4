#
# Regular cron jobs for the usbboot package
#
0 4	* * *	root	[ -x /usr/bin/usbboot_maintenance ] && /usr/bin/usbboot_maintenance
