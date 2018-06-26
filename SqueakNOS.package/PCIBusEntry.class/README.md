I represent a device 'function' (DF) 'configuration space' (CS) in the PCI bus. (*guessing*) Simple devices have only one function.
In PCI, each DF is assigned an ID, which is used to access its associated CS, through IO ports 0xCF8 and 0xCFC. 

The CS provides 64 bytes of fixed fields that give info about the device: device ID, vendor ID, Status, etc. One very important info the CS give are the 6 Base Address Registers (BARs). The BIOS or OS assigns mmaped addresses or IO ports to the DF, and saves those addresses in the BAR fields of the CS. To obtain those addresses, the driver just reads the BAR fields. Those fields are encoded: if it is an io port, the first bit is 1, and bits 3 to 32 are the base io address (4 byte aligned). Else, if first bit is 0,  it is an mmaped address, and bits 5 to 32 tell the base address (16-byte aligned).

The ID of a DF is split in 8 bit bus number, 5 bit device number and 3 bit function number.

Some examples:

"To scan the bus"		PCIBusEntry allValid
"To get memory ranges"	PCIBusEntry allValid collect: [:e | e allMemoryRanges]
"To get IO ranges"		PCIBusEntry allValid collect: [:e | e allIORanges]

Information on PCIBus

GRUB Legacy source (GRUB 0.97) netboot/pci.c

Info from pages:
http://www.mega-tokyo.com/osfaq/Where%20can%20I%20find%20programming%20info%20on%20PCI%3F
http://www.cs.nmsu.edu/~pfeiffer/classes/473/notes/pci.html

Specs from:
http://perso.orange.fr/pierrelib/buses/index.htm
Specially chapter  6 from PCI Local Bus Specification (v2.2 for example)

Vendors and device list:
http://www.pcidatabase.com/

Class codes and Class sub codes:
http://www.acm.uiuc.edu/sigops/roll_your_own/7.c.1.html
http://cvs.opensolaris.org/source/raw/on/usr/src/common/pci/pci_strings.c

Still missing in this implementation (may be more things are missing):
- Memory and I/O map support (moving PCI devices around in memory and I/O space)
- Class and subClass code strings (just for readability).
- Capabilities List (chapter 6.7 and Appendix H of PCI Local Bus Spec)
- PCI Exansion ROMs (chapter 6.3 of PCI Local Bus Spec)
- Vital Product Data (Appendix I of PCI Local Bus Spec)
- Message Signaled Interrupts (chapter 6.8 of PCI Local Bus Spec)
