instance creation
fileNamed: filename
	^ self new stream: (FileStream readOnlyFileNamed: filename)