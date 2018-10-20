helpers
mss
	^ (self options detect: [:one | one isKindOf: MSS] ifNone: [^ nil]) value