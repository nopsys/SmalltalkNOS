control
down
	device down.
	device removeActionsWithReceiver: self.
	process ifNotNil: [process terminate. process := nil]