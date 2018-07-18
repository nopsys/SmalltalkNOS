accessing
add: anInternetAddress
	self length - 4 > self pointer ifFalse: [^ self].
	1 to: 4 do: [ :each | self at: self pointer + each - 1 put: (anInternetAddress at: each)].
	self pointer: self pointer + 4.
	^ anInternetAddress