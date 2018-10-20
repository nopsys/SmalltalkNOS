control
open
	| semaphoreIndex |
	self mustBeClosed.
	semaphoreIndex := Smalltalk registerExternalObject: semaphore.
	descriptor := self primitiveOpen: adapter snapshot: snapshot promiscuous: promiscuous semaphore: semaphoreIndex.
	self primitiveSet: descriptor filter: filter