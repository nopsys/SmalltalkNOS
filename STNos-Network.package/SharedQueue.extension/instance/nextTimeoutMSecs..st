*STNos-Network
nextTimeoutMSecs: anInteger
	" This method doesn't ever timeout. I believe there's a semantic error in #waitWhile:for:maxMilliseconds: and family"
	^ monitor
		critical: [ monitor waitWhile: [ items isEmpty ] for: nil maxMilliseconds: anInteger.
			items removeFirst ]