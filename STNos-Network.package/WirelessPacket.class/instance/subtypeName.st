accessing-control
subtypeName
	self isManagement ifTrue: [^ #(AssociationRequest AssociationResponse ReassociationRequest ReassociationResponse ProbeRequest ProbeResponse Reserved Reserved Beacon ATIM Disassociation Authentication Deathentication Reserved Reserved Reserved) at: self subtype + 1].
	self isControl ifTrue: [^ #(Reserved Reserved Reserved Reserved Reserved Reserved Reserved Reserved Reserved Reserved 'PS-Poll' RTS CTS ACK 'CF-End' 'CF-End+CF-ACK') at: self subtype + 1].
	self isData ifTrue: [^ #(Data 'Data+CF-ACK' 'Data+CF-Poll' 'Data+CF-ACK+CF-Poll' Null 'CF-ACK' 'CF-Poll' 'CF-ACK+CF-Poll' Reserved Reserved Reserved Reserved Reserved Reserved Reserved Reserved) at: self subtype + 1].
	^ #Reserved