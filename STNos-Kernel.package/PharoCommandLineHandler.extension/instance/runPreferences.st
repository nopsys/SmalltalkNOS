*STNos-Kernel-PharoCompatibility
runPreferences
	Computer isSqueakNOS ifTrue: [ ^self ].
	Smalltalk at: #SystemSettingsPersistence ifPresent: [:persistence | 
		persistence resumeSystemSettings].
	Smalltalk at: #StartupPreferencesLoader ifPresent: [:loader |
		loader default loadFromDefaultLocations ].
