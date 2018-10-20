accessing
codeNames
	self type = 3 "Destination Unreachable"
		ifTrue: [^ #(NetUnreachable HostUnreachable ProtocolUnreachable PortUnreachable FragmentationNeeded SourceRouteFailed NetUnknown HostUnknown HostIsolated NetAnomaly HostAnomaly NetUnrTos HostUnrTos PacketFiltered PrecedenceViolation PrecedenceCutOff)].
	self type = 5 "Redirect (change route)"
		ifTrue: [^ #(RedirectNet RedirectHost RedirectNetForTOS RedirectHostForTOS)].
	self type = 11 "Time Exceeded"
		ifTrue: [^ #(TTLCountExceeded FragmentationReassemblyTimeExceeded)].
	^ #()