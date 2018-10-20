control
abort: anError
	"Abort the connection with anError."
	socket lastError: anError; detach