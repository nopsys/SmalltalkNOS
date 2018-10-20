instance creation
bytes: aByteArray
	| integer |
	integer := 0.
	aByteArray reverseDo: [ :each | integer := integer * 256 + each].
	^ self new: aByteArray size * 8 with: integer