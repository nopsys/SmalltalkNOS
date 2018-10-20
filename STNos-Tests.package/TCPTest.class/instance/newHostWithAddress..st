running
newHostWithAddress: anInternetAddress
	| ip |
	ip := IP new.
	ip address: anInternetAddress.
	ip | ICMP new.
	ip | UDP new.
	ip | TCP new.
	^ ip