status/testing
waitUntilDMADataTransferIsReady
	| status |
	[
		done ] whileFalse.
	self atAlternateStatusReg.
	(self errorOccurred: status) ifTrue: [
		self error: 'An error occurred while reading'].
	 ^self dataReady: status.