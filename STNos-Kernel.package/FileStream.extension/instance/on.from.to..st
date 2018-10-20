*STNos-Kernel-PharoCompatibility
on: aCollection from: firstIndex to: lastIndex
	| newStream |
	newStream := aCollection copy.
	newStream setFrom: firstIndex to: lastIndex.
	^newStream