private
alarmSortBlock
	^ [ :alarm1 :alarm2 | 
		| answer |
		answer := alarm1 scheduledTime < alarm2 scheduledTime.
		answer]