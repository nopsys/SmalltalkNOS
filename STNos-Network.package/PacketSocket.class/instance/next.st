accessing
next
	| length bytes |
	descriptor isNil ifTrue: [^ self error: 'The socket is closed'].
	semaphore wait.
	bytes := ByteArray new: snapshot+100.
	length := self primitiveRead: descriptor into: bytes startingAt: 1.
	^ packetClass bytes: (bytes copyFrom: 1 to: length)