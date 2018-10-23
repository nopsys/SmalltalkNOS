initialize-release
init
	initializers do: [:initializer | 
		initializer isInitialized ifFalse: [ initializer initialize: self ]]