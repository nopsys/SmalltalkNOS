accessing
at: index put: value
	"fat indexes are 0-based"

	contents unsignedLongAt: index * 4 + 1 put: value