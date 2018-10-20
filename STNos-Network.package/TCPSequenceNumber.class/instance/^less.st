comparing
< aNumber
	^ value ~= aNumber asInteger and: [aNumber asInteger - value \\ 16r100000000 < 16r80000000]