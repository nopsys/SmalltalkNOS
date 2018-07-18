tests
testClassification
	| option |
	option := IPOption bytes: #(68 3 1). "timestamp"
	self assert: option classification = 2.
	self assert: option number = 4.
	self assert: option length = 3