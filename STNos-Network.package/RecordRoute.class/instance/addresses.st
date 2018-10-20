accessing
addresses
	^ (4 to: self pointer by: 4) collect: [ :each | InternetAddress bytes: (self copyFrom: each to: each + 4)]