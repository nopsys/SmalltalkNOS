accessing
codeName
	^ self codeNames at: self code + 1 ifAbsent: [#UnknownCode]