tests
testOptions
	| mss timestamp windowScale |
	self assert: packet options size = 5.
	mss := packet options first.
	self assert: mss value = 1460.
	timestamp := packet options third.
	self assert: timestamp value = 1829602.
	self assert: timestamp echo = 0.
	windowScale := packet options last.
	self assert: windowScale factor = 1