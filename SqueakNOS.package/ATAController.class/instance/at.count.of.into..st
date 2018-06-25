services
at: startSector count: sectorCount of: deviceNumber into: answer
	| remaining alreadyRead nextBlockNumber |
	"The max we can read is 256 sectors (thats an ATA limit). If we want to read more, we do it by grabing chunks of 256 sectors until we finish."
	"Transcript show: 'Reading from: ', firstBlockNumber asString, ' to: ', lastBlockNumber asString, Character cr asString."
	"self halt."
	remaining := sectorCount.
	alreadyRead := 0.
	nextBlockNumber := startSector - 1.
	[ remaining > 0 ]
		whileTrue: [ | chunkSize |
			chunkSize := remaining min: 256.
			answer
				replaceFrom: (self byteOffsetOfBlock: alreadyRead + 1)
				to: (self byteOffsetOfBlock: alreadyRead + chunkSize + 1) - 1
				with:
					(self
						issueReadFrom: nextBlockNumber
						count: chunkSize
						device: deviceNumber
						timeout: self readMillisecondsTimeout)
				startingAt: 1.
			nextBlockNumber := nextBlockNumber + chunkSize.
			alreadyRead := alreadyRead + 256.
			remaining := remaining - 256 ].
	^ answer