arithmetic
| aNetAddress
	| newBytes |
	newBytes := ByteArray new: bytes size.
	1 to: bytes size do: [ :each | newBytes at: each put: ((bytes at: each) bitOr: (aNetAddress bytes at: each))].
	^ self class bytes: newBytes