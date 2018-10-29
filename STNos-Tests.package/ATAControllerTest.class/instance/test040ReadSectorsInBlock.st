tests
test040ReadSectorsInBlock
	| all first second third fourth |
	all := controller at: 1 count: 4 of: 0.
	first := controller at: 1 count: 1 of: 0.
	second := controller at: 2 count: 1 of: 0.
	third := controller at: 3 count: 1 of: 0.
	fourth := controller at: 4 count: 1 of: 0.
	self assert: all equals: first , second , third , fourth