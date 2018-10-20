accessing
fragmentOffset: fragmentOffset
	self shortAt: 7 put: (((self shortAt: 7) bitAnd: 16rE000) bitOr: fragmentOffset // 8)