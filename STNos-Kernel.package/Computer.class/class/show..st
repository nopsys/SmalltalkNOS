debugging
show: aString 
	self isSqueakNOS
	 ifTrue: [ self primPushDebugString: aString, String lf]
	 ifFalse: [ Transcript show: aString ]