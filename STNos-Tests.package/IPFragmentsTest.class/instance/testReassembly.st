tests
testReassembly
	| defragmented reassemblyList |
	reassemblyList := IPReassemblyList new.
	fragments shuffled do: [ :each | reassemblyList add: each].
	self assert: reassemblyList isComplete.
	defragmented := reassemblyList packet.
	defragmented setChecksum.
	self assert: defragmented length = packet length.
	self assert: defragmented asByteArray = packet asByteArray