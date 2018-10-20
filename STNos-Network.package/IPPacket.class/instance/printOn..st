printing
printOn: aStream
	self isFragment ifTrue: [aStream nextPutAll: 'IP Fragment '] ifFalse: [aStream nextPutAll: 'IP '].
	aStream print: self source; nextPutAll: ' -> '; print: self destination.
	self df ifTrue: [aStream nextPutAll: ' (DF)'].
	self options do: [ :each | aStream space; print: each]