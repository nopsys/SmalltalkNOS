*SqueakNOS-PharoCompatibility
defaultAction
	SqueakNOSPlatform isActivePlatform ifTrue: [ Computer show: self standardMessageText].
	^super defaultAction