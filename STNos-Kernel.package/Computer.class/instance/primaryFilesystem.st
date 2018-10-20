filesystem
primaryFilesystem
	^ primaryFilesystem ifNil: [ primaryFilesystem := self diskFS ]