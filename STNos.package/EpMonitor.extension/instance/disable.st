*STNos-TemporaryCompatibility
disable

	Computer isSqueakNOS ifFalse: [
		self sessionStore flush.
	].
	{ systemAnnouncer. testAnnouncer. jobAnnouncer }
		do: [ :each | each ifNotNil: [ :a | a unsubscribe: self ] ].
	
	self announceMonitorStateUpdated