memory
enablePaging: aComputer
	| memoryManager |
	memoryManager := PageManager forMemory: self memory using: aComputer processor.
	memoryManager installOn: aComputer.
	