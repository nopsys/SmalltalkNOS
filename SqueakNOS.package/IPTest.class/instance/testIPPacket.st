testing
testIPPacket
	| semaphore received |
	semaphore := Semaphore new.
	ip2 | (PluggableConduit new incomingAction: [ :packet | received _ packet. semaphore signal]).
	ip1 << ((IPPacket with: (UDPPacket new: 100)) destination: ip2 address).
	semaphore waitTimeoutMSecs: self roundTripMilliseconds.
	self assert: received notNil