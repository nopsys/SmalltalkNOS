*STNos-Kernel-PharoCompatibility
allocate: byteSize aligned: alignment
	alignment == 4 ifTrue: [ ^self allocate: byteSize  ].
	self error: 'Unsupported alignment'