ifconfig -a

ifconfig wlan0 192.168.1.178 netmask 255.255.252.0

route add default gw 192.168.0.8

nano /etc/resolv.conf