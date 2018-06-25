initialization
issueRead
	self
		clearStartStopBit;
		setDescriptorTablePointerRegister;
		setDirectionToWriteIntoBus;
		clearInterruptAndErrorBits;
		startTransfer