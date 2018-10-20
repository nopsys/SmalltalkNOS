timers
schedule
	super schedule.
	timer every: self pruneMilliseconds send: #prune to: self