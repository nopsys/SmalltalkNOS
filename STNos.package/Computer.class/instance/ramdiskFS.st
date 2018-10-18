filesystem
ramdiskFS
	| sectorSize boot record start partitionSize partition |
	sectorSize := 512.
	boot := MasterBootRecord on: (ramdisk copyFrom: 1 to: sectorSize).
	record := boot partitionRecord: 1.
	start := record offsetFromMBR * sectorSize +1.
	partitionSize := record numberOfSectors * sectorSize.
	partition := ramdisk segmentFrom: start size: partitionSize.
	^ (FAT32FileSystem on: partition) open