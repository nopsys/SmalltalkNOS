flow
input: packet
	(packet destination isBroadcast or: [address isNil or: [packet destination = address]]) ifFalse: [^ self].
	super input: packet data