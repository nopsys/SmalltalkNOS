private
handlerFor: anAddress
	| interval intervals |
	handlers keys isEmpty ifTrue: [^self defaultPageFaultHandler].  
	intervals := handlers keys select: [:int | int includes: anAddress].
	interval := intervals isEmpty 
	ifTrue: [Computer show: 'No handling interval for address ', anAddress printString. Computer show: handlers printString. 0] 
	ifFalse: [intervals min].
	^handlers at: interval
	
	
	
