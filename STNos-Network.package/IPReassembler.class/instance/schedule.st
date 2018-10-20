timers
schedule
	super schedule.
	timer every: 5000 "msecs" send: #prune to: self