services
fileNamed: aString
	^self files detect: [:file | file name asLowercase = 
		(String streamContents: [:stream | (filesystem nameFormat: aString) asFileReference gtDisplayOn: stream]) asLowercase] 