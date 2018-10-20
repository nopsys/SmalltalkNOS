control
close
	[self primitiveClose: descriptor] on: Error do: [:ex| Transcript cr; show: 'PacketSocket close failed'].
	Smalltalk unregisterExternalObject: semaphore