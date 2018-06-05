*SqueakNOS-PharoCompatibility
useFilePlugin
	Primitives := SqueakNOSPlatform isActivePlatform ifTrue: [SqueakNOSFilePrims new] ifFalse: [FilePluginPrims new]