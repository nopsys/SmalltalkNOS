accessing
group
	^ self isMulticast ifTrue: [((BitArray bytes: bytes) copyFrom: 5 to: 5+28-1) asInteger]