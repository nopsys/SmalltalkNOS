initialization
initialize
	super initialize.
	entries := Set new.
	routes := RoutingTable new.
	self flush