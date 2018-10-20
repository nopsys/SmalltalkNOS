accessing
flush
	"Flush the cache."
	entries := entries select: [ :each | each isStatic].
	requests := OrderedCollection new