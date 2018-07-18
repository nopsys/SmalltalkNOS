accessing-control
pm
	"Power management flag."
	^ (self frameControl bitShift: -12) odd