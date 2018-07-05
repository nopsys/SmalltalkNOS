primitive
primitiveOpen: deviceName snapshot: anInteger promiscuous: aBoolean semaphoreIndex: semIndex
	| stringSize descriptor |
	self primitive: 'PacketSocketOpen' parameters: #(String SmallInteger Boolean SmallInteger).
	stringSize _ interpreterProxy slotSizeOf: (deviceName asOop: String).
	descriptor _ self cCode: 'sqPacketSocketOpen(deviceName, stringSize, anInteger, aBoolean, semIndex)'.
	^ descriptor asSmallIntegerObj