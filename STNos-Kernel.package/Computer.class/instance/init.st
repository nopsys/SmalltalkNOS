initialize-release
init
	self currentWorld
		flash;
		fullRepaintNeeded.
	initializers do: [:initializer | initializer initialize: self ].
	PCIBusEntry allValid do: [ :bus | Transcript
				show: bus;
				cr;cr ].
	Display forceToScreen