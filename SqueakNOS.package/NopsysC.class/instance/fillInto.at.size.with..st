as yet unclassified
fillInto: arg1 at: arg2 size: arg3 with: arg4
	"use generic names because changes may not be available.
	fillInto: dest at: startIndex size: size with: src
	"

	^ self
		ffiCall: #(void * fillInto #(void * arg1 , size_t arg2 , size_t arg3 , const void * arg4))