accessing
gateway
	^ InternetAddress bytes: (self copyFrom: 5 to: 8)