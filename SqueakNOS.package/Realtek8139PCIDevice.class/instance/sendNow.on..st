transmiting
sendNow: anEthernetPacket on: descriptorIndex
	| str |
	str := anEthernetPacket asString padRightTo: 60.
	(self transmitStartAddress: descriptorIndex) stringAt: 1 put: str.
	self transmitStatus: descriptorIndex put: str size.