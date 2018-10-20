timers
prune
	entries := entries select: [ :each | each isStatic or: [each timeout > timer time]]