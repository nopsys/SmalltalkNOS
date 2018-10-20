converting
copyFrom: start to: end
	| s |
	self validateIndex: start toIndex: end.
	^contents copyFrom: offset + start to: offset + end