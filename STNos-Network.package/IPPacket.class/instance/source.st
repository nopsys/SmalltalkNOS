accessing
source
	^ InternetAddress bytes: (self copyFrom: 13 to: 16)