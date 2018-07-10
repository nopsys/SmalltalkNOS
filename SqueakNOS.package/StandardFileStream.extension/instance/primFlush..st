*SqueakNOS-PharoCompatibility
primFlush: id
	"On Unix, the FilePlugin uses stdio FILE* structs which maintain their
	own internal buffer to minimize write() syscalls. This flushes that buffer.
	On Windows this and primSync: do the same thing."

	"We can't ignore fflush() failing, because it can fail for any of the
	reasons write() can."

	<primitive: 'primitiveFileFlush' module: 'FilePlugin'>
	| stream |
	SqueakNOSPlatform isActivePlatform
		ifTrue: [ "stream := '' writeStream.
			thisContext printDebugOn: stream.
			Transcript show: 'flush: ' , stream contents" ]
		ifFalse: [ self primitiveFailed ]