*SqueakNOS-PharoCompatibility
stringAt: index put: aString
	| addr |
	addr := self asInteger + index - 1.
	^ self writeString: aString toMemoryAt: addr