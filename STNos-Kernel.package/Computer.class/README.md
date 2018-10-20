Computer current networkingStack
	internetAddress: (InternetAddress fromString: '11.0.0.2');
	up.
	
socket := Computer current networkingStack ip udp 
	socketTo: (InternetAddress fromString: '11.0.0.1')
	port: 1111
	localPort: 2222.

socket nextPut: 10 from: #[1 2 3 4 5 6 7 8 9 10] startingAt: 1
socket next