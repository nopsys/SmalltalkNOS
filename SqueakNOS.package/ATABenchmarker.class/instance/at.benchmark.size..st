services
at: benchTitle benchmark: aBlock size: size
	| milliseconds bytesPerSecond stream |
	milliseconds := Time millisecondsToRun: aBlock.
	bytesPerSecond := size / milliseconds * 1000.
	stream := WriteStream on: ''.
	stream
		nextPutAll: milliseconds asString;
		nextPutAll: ' ms. Throughput: '.
	(bytesPerSecond / (1024 * 1024)) asFloat absPrintOn: stream base: 10 digitCount: 5.
	stream nextPutAll: ' MB/s'.
	results at: benchTitle put: stream contents