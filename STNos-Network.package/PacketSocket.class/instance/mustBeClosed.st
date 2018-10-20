private
mustBeClosed
	descriptor isNil ifFalse: [^ self error: 'Socket must be closed']