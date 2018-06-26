printing
formatedConfigurationRegisters
	^ '0h - VENDOR ID: ' , self vendorId hex , ' DEV ID: ' , self deviceId hex , String cr
		, '4h - COMMAND: ' , self command hex , ' STATUS: ' , self status hex , String cr
		, '8h - REV ID: ' , self revisionId hex , ' CLS CODE: ' , self classCode hex
		, String cr , 'Ch - CACHE LINE S: ' , self cacheLineSize hex , ' LAT TIMER: '
		, self latencyTimer hex , ' HDR TYPE: ' , self headerType hex , ' BIST: '
		, self builtInSelfTest hex , String cr , '10h - BAR0: '
		, (self baseAddressRegister: 0) hex , String cr , '14h - BAR1: '
		, (self baseAddressRegister: 1) hex , String cr , '18h - BAR2: '
		, (self baseAddressRegister: 2) hex , String cr , '1Ch - BAR3: '
		, (self baseAddressRegister: 3) hex , String cr , '20h - BAR4: '
		, (self baseAddressRegister: 4) hex , String cr , '24h - BAR5: '
		, (self baseAddressRegister: 5) hex , String cr , 'INTR LINE: '
		, self interruptLine printString