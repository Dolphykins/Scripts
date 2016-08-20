#!/bin/bash
service network-manager restart
case "$1" in
thaw|resume)
nmcli nm sleep false
pkill -f wpa_supplicant
;;
*)
;;
esac
exit $?
