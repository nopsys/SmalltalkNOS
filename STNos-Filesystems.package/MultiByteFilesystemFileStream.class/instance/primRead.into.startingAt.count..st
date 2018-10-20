private
primRead: id into: byteArray startingAt: start count: max
	"Read up to count bytes of data from this file into the given string or byte array starting at the given index. Answer the number of bytes actually read."
	| count contents read |
	count := max min: self size - offset.
	contents := id filesystem
				contentsFor: id
				startingAt: offset
				count: count.
	read := contents size.
	byteArray replaceFrom: start to: start + read - 1 with: contents.		
	self primSetPosition: id to: (self primGetPosition: id) + read.				
	^read