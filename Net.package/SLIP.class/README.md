To start a SLIP on a normal Squeak in Linux:

1. inside Squeak inspect:
	(IPInterface on: (SLIP on: (File named: '/dev/pts/7') openForWrite))
		internetAddress: (InternetAddress fromString: '192.168.7.2');
		up.

2. open a shell as root
3. be sure that slip is installed in current kernel. check 'dmesg' and/or 'lsmod' output. If it's not, 'insmod slip' should be enough.
4. in the shell: 'slattach -s 115200 -L -p slip -d -v /dev/ptmx &'
5. in the shell: 'ifconfig sl0 192.168.7.1 dstaddr 192.168.7.2 netmask 255.255.255.252 mtu 256 up
'  "the IP address must be in an unused network"

