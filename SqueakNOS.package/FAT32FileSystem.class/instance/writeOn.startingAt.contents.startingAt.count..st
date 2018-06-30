services
writeOn: aFile startingAt: aFileOffset contents: bytes startingAt: bytesStart count: count
	"notice: aFileOffset  is zero indexed, anotherNumber is not"
	| helper firstIndex lastIndex clusters |

	helper := BlockArithmetic new size: self bytesPerCluster.
	firstIndex := helper blockNumberOf: aFileOffset + 1.
	lastIndex := helper blockNumberOf: aFileOffset + count.
	
	aFile identifier = 0 ifTrue: [self addFirstClusterTo: aFile].
	
	clusters := self clustersChainNoCopyFor: aFile.
	lastIndex > clusters size ifTrue: [ self addClustersTo: aFile count: lastIndex - clusters size].
	
	^self writeClusters: (clusters copyFrom: firstIndex to: lastIndex)
		   startingAt: (helper positionInBlockOf: aFileOffset + 1)
	  	   with: bytes asByteArray startingAt: bytesStart count: count.	