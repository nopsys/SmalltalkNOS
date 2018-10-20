accessing
left: anIP
	super left: anIP.
	anIP icmp when: #destinationUnreachable: send: #handleDestinationUnreachable: to: self