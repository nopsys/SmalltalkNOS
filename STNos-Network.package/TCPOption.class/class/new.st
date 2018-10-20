instance creation
new
	^ self bytes: ((ByteArray new: self length) at: 1 put: self type; at: 2 put: self length; yourself)