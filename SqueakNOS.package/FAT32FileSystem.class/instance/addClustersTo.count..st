private
addClustersTo: aFilesystemContent count: aNumber
	| clusters |
	Transcript show: 'adding ', aNumber printString, ' clusters to file.', Character cr asString.
	clusters := OrderedCollection new.
	aNumber timesRepeat: [clusters add: (self addClusterTo: aFilesystemContent)].
	^clusters