*STNos-Pharo-Compatibility
libgit2_init
	Computer isSqueakNOS ifTrue: [ ^self ].
	^self ffiCall: #(int git_libgit2_init())