*STNos-Kernel-PharoCompatibility
useFilePlugin
	Primitives := Computer isSqueakNOS ifTrue: [SqueakNOSFilePrims new] ifFalse: [FilePluginPrims new]