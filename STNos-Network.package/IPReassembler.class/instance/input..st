flow
input: anIPPacket
	| reassemblyList |
	anIPPacket isFragment ifFalse: [^ super input: anIPPacket].
	reassemblyList := lists detect: [ :one | one matches: anIPPacket] ifNone: [lists add: (IPReassemblyList new timeout: timer time + 20000)].
	reassemblyList add: anIPPacket.
	reassemblyList isComplete ifFalse: [^ self].
	lists remove: reassemblyList.
	super input: reassemblyList packet