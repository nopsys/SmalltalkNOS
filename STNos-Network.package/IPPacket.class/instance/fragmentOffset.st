accessing
fragmentOffset
	^ ((self shortAt: 7) bitAnd: 16r1FFF) * 8