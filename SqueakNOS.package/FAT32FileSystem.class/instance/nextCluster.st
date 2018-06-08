private
nextCluster
	| strm |
	strm := StreamOnStream on: stream from: stream position to: stream position + self bytesPerCluster.
	^FAT32Cluster contents: strm.