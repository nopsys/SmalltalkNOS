*STNos-Kernel-PharoCompatibility
startUp
	"The #store accessor refreshes each instance since it will discover that the Session changed"
	Computer isSqueakNOS ifTrue: [ ^self ].
	self allInstancesDo: #store 