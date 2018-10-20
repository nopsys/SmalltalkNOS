as yet unclassified
initialize
	super initialize.
	queue := SharedQueue new.
	random := Random new. 
	dropRate := 0.0.
	corruptionRate := 0.0.
	unsortRate := 0.0.
	minDelay := 50.
	maxDelay := 100.
	minimumSize := 60 "pad small packets to 60 bytes"