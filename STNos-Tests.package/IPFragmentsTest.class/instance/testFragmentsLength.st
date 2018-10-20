as yet unclassified
testFragmentsLength
	self assert: (fragments allSatisfy: [ :each | each length <= self fragmentSize]).
	self assert: (fragments collect: [ :each | each length - each headerSize]) sum = (packet length - packet headerSize)