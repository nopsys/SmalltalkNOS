tests
test20EmptyRoot
	| filesystem root |
	filesystem := self newInstance.
	root := filesystem root.
	self
		assert: root directories size = 0;
		assert: root files size = 0