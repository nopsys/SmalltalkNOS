private
positionOfCluster: index
	"cluster numbers are 0-based"
	^index * self bytesPerCluster + 1