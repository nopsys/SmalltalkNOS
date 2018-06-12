private
add: aFAT32ClusterRecord at: anIndex
	| start bytes |
	start := self recordSize * (anIndex - 1).
	bytes := aFAT32ClusterRecord contents.
	contents replaceFrom: start to: start + bytes size - 1 with: bytes startingAt: 1