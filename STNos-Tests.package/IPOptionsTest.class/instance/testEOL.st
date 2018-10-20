tests
testEOL
	| option |
	option := IPOption bytes: #(0).
	self assert: option classification = 0.
	self assert: option number = 0.
	self assert: option isEOL