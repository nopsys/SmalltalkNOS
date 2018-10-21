class initialization
startUp: resuming 
	self isSqueakNOS
		ifTrue: [
				resuming ifTrue: [
					Transcript cr; show: 'This is SqueakNOS!!! :-)'; cr. 
					Computer show: 'Starting init'.
					Current init.
				] ifFalse: [
					snapshotter ifNotNil: [: s | s snapshot. snapshotter := nil] 
				]
		] ifFalse: [
			Transcript cr; show: 'This is not SqueakNOS! :-('; cr.
		]