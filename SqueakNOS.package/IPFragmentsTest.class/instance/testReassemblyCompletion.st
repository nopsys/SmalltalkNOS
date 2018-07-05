tests
testReassemblyCompletion
	| shuffledFragments reassemblyList |
	reassemblyList := IPReassemblyList new.
	shuffledFragments := fragments shuffled.
	shuffledFragments allButLast do: [ :each | reassemblyList add: each].
	self assert: reassemblyList isComplete not.
	reassemblyList add: shuffledFragments last.
	self assert: reassemblyList isComplete