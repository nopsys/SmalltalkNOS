accessing
selectSector: lbaAddress ofDrive: aDriveNumber
	"LBA Addressing: 28 bits. 
	<4 bits: head> < 8 bits: cyl high> <8 bits: cyl low> <8 bits: sector>
	We add 4 to drive number so that the bit of LBA addressing mode is asserted inside selectHead.
	"

	| sector cylLow cylHigh head |
	sector := lbaAddress bitAnd: 16rFF.
	cylLow := (lbaAddress bitShift: -8) bitAnd: 16rFF.
	cylHigh := (lbaAddress bitShift: -16) bitAnd: 16rFF.
	head := (lbaAddress bitShift: -24) bitAnd: 16rF.
	self
		selectHead: head ofDevice: aDriveNumber + 4;
		regErrorClear;
		atSectorNumberRegPut: sector;
		atCylinderLowRegPut: cylLow;
		atCylinderHighRegPut: cylHigh