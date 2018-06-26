accessing
timestamps
	^ (4 to: self pointer by: 4) collect: [ :each | (BitArray bytes: (self copyFrom: each to: each + 4)) asInteger]