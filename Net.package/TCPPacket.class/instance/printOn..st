printing
printOn: aStream
	aStream nextPutAll: 'TCP '; print: self source; nextPutAll: ' -> '; print: self destination.
	(self envelope notNil and: [self fin | self syn | self rst or: [self length > 0]])
		ifTrue: [aStream space; print: self sequence asInteger; nextPut: $:; print: self lastSequence "(self sequence + self length)" asInteger; nextPut: $(; print: self length; nextPut: $)].
	#(fin psh rst syn urg xxx yyy) do: [ :each | (self perform: each) ifTrue: [aStream space; nextPutAll: each]].
	self ack ifTrue: [aStream nextPutAll: ' ack '; print: self ackSequence asInteger].
	aStream nextPutAll: ' win '; print: self windowSize.
	self options do: [ :each | aStream space; print: each].
	self length > 0 ifTrue: [aStream space; print: ((self rawData asString collect: [:each| each isAlphaNumeric ifTrue: [each] ifFalse: [$.]]) truncateWithElipsisTo: 32)]