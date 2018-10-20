accessing
add: anInteger
	| timestampBytes |
	self length - 4 > self pointer ifFalse: [^ self].
	timestampBytes := (BitArray new: 4*8 with: anInteger) asByteArray.
	1 to: 4 do: [ :each | self at: self pointer + each - 1 put: (timestampBytes at: each)].
	self pointer: self pointer + 4.
	^ anInteger