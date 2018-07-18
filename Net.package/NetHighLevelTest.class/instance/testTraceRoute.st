tests
testTraceRoute
	| traceroute route |
	traceroute := TraceRoute new.
	(net1 findA: IP) | traceroute.
	route := traceroute routeTo: (net2 findA: IP) address.
	self assert: route size = 1