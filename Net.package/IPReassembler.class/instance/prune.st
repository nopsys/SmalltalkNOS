timers
prune
	| reassemblyList icmp ip |
	[lists notEmpty and: [lists first timeout < timer time]]
		whileTrue: [reassemblyList := lists removeFirst.
					(icmp := ICMPPacket quote: reassemblyList fragments first)
						typeName: #TimeExceeded;
						codeName: #FragmentationReassemblyTimeExceeded.
					(ip := IPPacket with: icmp)
						destination: reassemblyList source;
						id: reassemblyList id.
					self << ip]