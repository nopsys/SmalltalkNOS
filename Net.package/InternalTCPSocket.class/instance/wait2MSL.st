timer
wait2MSL
	"(Re)schedule a delete event for 2MSL from now."
	self scheduleDetachAfter: self maximumSegmentLifetime * 2