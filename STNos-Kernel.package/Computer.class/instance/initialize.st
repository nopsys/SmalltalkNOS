initialize-release
initialize
	devices := Dictionary new.
	initializers := OrderedCollection new.
	initializers 
		addLast: BasicsInitializer new;
		addLast: PharoInitializer new.