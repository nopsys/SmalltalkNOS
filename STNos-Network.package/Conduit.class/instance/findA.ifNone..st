accessing
findA: aClass ifNone: aBlock
	| found |
	(self isKindOf: aClass) ifTrue: [^ self].
	self do: [ :each | (found := each findA: aClass ifNone: []) ifNotNil: [^ found]].
	^ aBlock value