class initialization
tweakSqueakForSqueakNOS
	true ifFalse: [ 
		Smalltalk
			removeFromStartUpList: #SecurityManager;
			removeFromStartUpList: #FileDirectory;
			removeFromShutDownList: #FileDirectory.
		#Debugger logDebuggerStackToFile: false]