accessing
name
	self isEOL ifTrue: [^ 'End'].
	self isNOP ifTrue: [^ 'Noop'].
	^ super name