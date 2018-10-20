accessing
at: index
	"fat indexes are 0-based"
	^ contents unsignedLongAt: index * 4 + 1