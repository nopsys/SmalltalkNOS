as yet unclassified
testMF
	self assert: (fragments allButLast allSatisfy: [ :each | each mf]).
	self assert: fragments last mf not