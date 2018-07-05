primitive
primitiveRead: descriptor into: aByteArray startingAt: startIndex
	"Read next packet into aByteArray and answer its length."
	| bufferSize bytesRead |
	self primitive: 'PacketSocketRead' parameters: #(SmallInteger ByteArray SmallInteger).
	bufferSize _ interpreterProxy slotSizeOf: (aByteArray asOop: ByteArray).
	bytesRead _ self cCode: 'sqPacketSocketRead(descriptor, aByteArray, startIndex, bufferSize)'.
	^ bytesRead asSmallIntegerObj