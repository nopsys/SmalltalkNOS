initialize-release
initialize: capacity
	buffer := ByteArray new: capacity.
	head := 1.
	tally := 0