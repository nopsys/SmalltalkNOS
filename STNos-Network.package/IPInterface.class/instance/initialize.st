initialization
initialize
	super initialize.
	ip := IP new.
	ip | TCP new.
	ip | UDP new.
	self | PluggableConduit transcripter | ip