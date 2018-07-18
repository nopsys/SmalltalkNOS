flow
input: anObject
	| delivered |
	anObject isNil ifTrue: [^ self].
	delivered := false.
	self do: [ :each |
		(each accepts: anObject)
			ifTrue: [delivered := true.
					each input: anObject]].
	delivered ifFalse: [self undeliverable: anObject]