timer
scheduleDetachAfter: msecs
	timer removeAlarm: #detach for: self.
	timer after: msecs send: #detach to: self