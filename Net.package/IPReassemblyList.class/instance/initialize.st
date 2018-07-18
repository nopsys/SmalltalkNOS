initialization
initialize
	fragments := SortedCollection sortBlock: [ :a :b | a fragmentOffset <= b fragmentOffset]