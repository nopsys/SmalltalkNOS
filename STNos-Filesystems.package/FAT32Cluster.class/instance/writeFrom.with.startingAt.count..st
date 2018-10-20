services
writeFrom: start with: stringOrByteArray startingAt: otherStart count: count
	contents
		replaceFrom: start to: start + count - 1 with: stringOrByteArray startingAt: otherStart.
	^ count