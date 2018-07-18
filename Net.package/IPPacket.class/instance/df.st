accessing flags
df
	"Answer true if the 'dont fragment' flag is set."
	^ self flags anyMask: 2