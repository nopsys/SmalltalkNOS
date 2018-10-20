converting
replaceFrom: start
to: end
with: another
startingAt: index
	self validateIndex: start toIndex: end.
	^contents
		replaceFrom: offset + start
		to: offset + end
		with: another
		startingAt: index