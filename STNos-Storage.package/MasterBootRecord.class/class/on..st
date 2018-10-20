instance creation
on: bytes
	bytes size ~= 512
		ifTrue: [ self error: 'Not a Master Boot Record' ].
	^ self new bytes: bytes