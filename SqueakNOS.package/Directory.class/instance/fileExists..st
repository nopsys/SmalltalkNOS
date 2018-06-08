quering
fileExists: aString
	^self files anySatisfy: [:file | file name asLowercase = 
		(String streamContents: [:stream | (filesystem nameFormat: aString) asFileReference gtDisplayOn: stream]) asLowercase]