initialize-release
initializeFAT
	| strm |
	strm := StreamOnStream on: stream from: self fatBeginLBA to: self fatBeginLBA + (self clustersCount * 4).
	fat := FAT32FileAllocationTable contents: strm