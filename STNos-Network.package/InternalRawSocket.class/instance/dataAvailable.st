accessing
dataAvailable
	"Answer whether there is data available for reading."
	^ inputStream atEnd not or: [inputQ isEmpty not]