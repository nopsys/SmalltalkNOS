accessing
gatewayTo: aNetAddress ifNone: exceptionBlock
	^ routes detect: [ :one | (one destination includes: aNetAddress) and: [one gateway notNil and: [one gateway ~= aNetAddress]]] ifNone: exceptionBlock