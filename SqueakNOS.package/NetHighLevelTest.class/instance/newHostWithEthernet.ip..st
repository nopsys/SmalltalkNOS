instance creation
newHostWithEthernet: anEthernetAddress ip: anInternetAddress
	| ip ethernet |
	ip := IP new.
	ip address: anInternetAddress.
	ip | ICMP new.
	ip | TCP new.
	ip | UDP new.
	ethernet _ Ethernet new.
	ethernet address: anEthernetAddress.
	ethernet | ip.
	ethernet arp protocolAddress: ip address.
	^ ethernet