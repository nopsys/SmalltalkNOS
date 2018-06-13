helpers
openRawFilesystem: fileName
	| stream  |
	"We create a copy so that in the worse case we don't break the test filesystem"
	stream := StandardFileStream fileNamed: fileName.
	^ (FAT32FileSystem on: stream binary contents) open