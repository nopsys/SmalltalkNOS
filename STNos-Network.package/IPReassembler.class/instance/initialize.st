initialization
initialize
	super initialize.
	lists := Heap sortBlock: [ :a :b | a timeout < b timeout]