primitives
initialize
	Current := self new.
	SessionManager default 
		registerGuiClassNamed: self name
	