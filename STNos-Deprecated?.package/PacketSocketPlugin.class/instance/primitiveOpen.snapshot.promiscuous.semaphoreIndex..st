primitive
primitiveOpen: deviceName snapshot: anInteger promiscuous: aBoolean semaphoreIndex: semIndex
	| stringSize descriptor |
	self primitive: 'PacketSocketOpen' parameters: #(String SmallInteger Boolean SmallInteger).
	stringSize := interpreterProxy slotSizeOf: (deviceName asOop: String).
	descriptor := self cCode: 'sqPacketSocketOpen(deviceName, stringSize, anInteger, aBoolean, semIndex)'.
	^ descriptor asSmallIntegerObj