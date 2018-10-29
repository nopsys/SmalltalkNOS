decorator
initialize: aComputer
	super initialize: aComputer.
	EpSettings monitorEnabled: false.
	Smalltalk tools workspaceTool: Workspace.
	NECPreferences enabled: false.
	SHPreferences enabled: false.