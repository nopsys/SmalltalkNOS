initialization
issueRead
	self
		stopTransfer;
		setDescriptorTablePointerRegister;
		setDirectionToWriteIntoBus;
		clearInterruptAndErrorBits;
		startTransfer