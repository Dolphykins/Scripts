#!/bin/bash
## This script will kill all network services and restart them.
## Useful for my laptop which tends to fail to re-initialize the Network Adapter after suspend.
## Credit: User "mrm" on Ubuntu Forums
## Source: http://askubuntu.com/questions/368671/ubuntu-13-10-wifi-not-re-connecting-after-suspend
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
