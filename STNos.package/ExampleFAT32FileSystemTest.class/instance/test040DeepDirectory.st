tests
test040DeepDirectory
	| directory |
	directory := self openRawBig directoryNamed: '/dira'.
	self
		assert: directory directories size = 0;
		assert: (directory fileExists: 'file.txt')