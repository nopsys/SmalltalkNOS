converting
adaptToInteger: rcvr andSend: selector
	^ self class value: (rcvr perform: selector with: value) \\ 16r100000000