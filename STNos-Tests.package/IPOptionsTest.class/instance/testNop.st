tests
testNop
	| option |
	option := IPOption bytes: #(1).
	self assert: option classification = 0.
	self assert: option number = 1.
	self assert: option isNOP