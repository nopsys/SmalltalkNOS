flow
output: aPacket
	self isDown ifTrue: [^ NetDown signal].
	device output: aPacket