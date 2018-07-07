accessing - frame list
frameListAddressAt: index
	^ ExternalAddress new fromInteger: ((self frameListValueAt: index) bitClear: 2r1111)