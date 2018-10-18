accessing
printOn: aStream
	aStream << self model; cr;
		<< 'sectors: '; << self sectors; cr;
		<<'capabilities: '; << self capabilities hex ; cr;
		<< 'configuration: '; << self configuration hex; cr;
		<< 'version: '; << self version; cr;
		<< 'serial: '; << self serial; cr;
		<< 'pioMode: '; << self pioMode; cr;
		<< 'multiwordDMAtransfer: '; << self multiwordDMAtransfer