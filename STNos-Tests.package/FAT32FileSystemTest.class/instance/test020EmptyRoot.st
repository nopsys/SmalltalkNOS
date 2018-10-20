tests
test020EmptyRoot
	| root |
	root := self memoryFilesystem root.
	self
		assert: root directories size equals: 0;
		assert: root files size equals: 0