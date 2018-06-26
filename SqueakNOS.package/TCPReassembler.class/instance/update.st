private
update
	| aSegment |
	stream atEnd ifFalse: [^ self].
	segments isEmpty ifTrue: [^ self].
	aSegment := segments removeFirst.
	(aSegment fin and: [finSequence isNil]) ifTrue: [finSequence := aSegment lastSequence].
	stream := (aSegment rawData
				copyFrom: (sequence - aSegment sequence) asInteger + 1
				to: aSegment length) readStream.
	sequence := aSegment nextSequence