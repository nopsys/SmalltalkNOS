accessing
name
	^ #(End Noop MSS WSopt sackOK SACK six seven TSopt) at: self type + 1 ifAbsent: [super name]