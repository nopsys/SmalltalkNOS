instance creation
fromString: aString
	"Return the internet address represented by the given string. The string should contain four positive decimal integers delimited by periods, commas, or spaces, where each integer represents one address byte. Return nil if the string is not a host address in an acceptable format."
	"self fromString: '1.2.3.4'"
	"self fromString: '1,2,3,4'"
	"self fromString: '1 2 3 4'"

	^ self bytes: ((aString findTokens: '., ') collect: [ :each | each asInteger])