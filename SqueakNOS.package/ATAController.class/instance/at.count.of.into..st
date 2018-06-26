services
at: startSector count: sectorCount of: deviceNumber into: answer
	| remaining alreadyRead nextBlockNumber start size |
	"The max we can read is 256 sectors (thats an ATA limit). If we want to read more, we do it by grabing chunks of 256 sectors until we finish."
	"Transcript show: 'Reading from: ', firstBlockNumber asString, ' to: ', lastBlockNumber asString, Character cr asString."
	"self halt."
	answer unsignedLongAt: 1 put: 16r55AA66BB.
	remaining := sectorCount.
	alreadyRead := 0.
	nextBlockNumber := startSector - 1.
	[ remaining > 0 ]
		whileTrue: [ | chunkSize |
			chunkSize := remaining min: 256.
			start := self byteOffsetOfBlock: alreadyRead + 1.
			size := chunkSize * self blockSize.
			self
						issueReadFrom: nextBlockNumber
						count: chunkSize
						device: deviceNumber
						timeout: self readMillisecondsTimeout.
			buffer fillInto: answer at: start size: size.
			nextBlockNumber := nextBlockNumber + chunkSize.
			alreadyRead := alreadyRead + 256.
			remaining := remaining - 256 ].
	^ answer