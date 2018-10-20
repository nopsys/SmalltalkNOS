class initialization
tweakSqueakForSqueakNOS
	EpSettings monitorEnabled: false.
	Smalltalk tools workspaceTool: Workspace.
	true
		ifFalse: [ | tmp2 |
			tmp2 := Smalltalk.
			tmp2
				removeFromStartUpList: #SecurityManager;
				removeFromStartUpList: #FileDirectory;
				removeFromShutDownList: #FileDirectory.
			#Debugger logDebuggerStackToFile: false ]