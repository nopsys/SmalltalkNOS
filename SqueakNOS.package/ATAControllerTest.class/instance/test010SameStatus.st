tests
test010SameStatus
	|  alternate regular |

	alternate := controller atAlternateStatusReg.
	regular := controller atStatusReg.
	self assert: alternate equals: regular