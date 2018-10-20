tests
testTCPSynScanner
	| scanner ports |
	scanner := TCPSynScanner new.
	scanner destination: (net2 findA: IP) address.
	(net1 findA: IP) | scanner.
	ports := (1 to: 10) collect: [ :each | 65535 atRandom].
	scanner scanAll: ports.
	(Delay forMilliseconds: self roundTripMilliseconds) wait.
	ports do: [ :each | self assert: (scanner closed includes: each)].
	self assert: scanner open isEmpty