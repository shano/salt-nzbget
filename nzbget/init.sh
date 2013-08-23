#!/bin/sh
### BEGIN INIT INFO
# Provides:          NZBget
# Required-Start:    $network $remote_fs $syslog
# Required-Stop:     $network $remote_fs $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Start NZBget at boot
# Description:       Start NZBget
### END INIT INFO
case "$1" in
start)   echo -n "Start services: NZBget"
/usr/local/bin/nzbget -D
;;
stop)   echo -n "Stop services: NZBget"
/usr/local/bin/nzbget -Q
;;
restart)
$0 stop
$0 start
;;
*)   echo "Usage: $0 start|stop|restart"
exit 1
;;
esac
exit 0
