*SqueakNOS-BenchSupport
snapshot: save andQuit: quit withDeferredStartup: aBlock
	DefaultExecutionEnvironment beActiveDuring: 
		 [^SessionManager default snapshot: save andQuit: quit withDeferredStartup: aBlock]