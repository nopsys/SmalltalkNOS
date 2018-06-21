initialization
setDirectionToRead
	| status |
	status := self byteAt: channelOffset + 0.
	self byteAt: channelOffset + 0 put: (status bitAnd: 2r11110111).