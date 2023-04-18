# BinAdd
Binary Adder for the Cmod A7-35T.

To program via Quad-SPI, download BinAdd/BinAdd3.runs/impl_1/BinAdd.bin and program in Vivado.
Alternatively, you can use USB-JTAG to test the program by downloading BinAdd/BinAdd3.runs/impl_1/BinAdd.bit and program in Vivado.

**I/O configuration**

**2 Bit Version**

Use Pin 11,10 (Bit 1, Bit 0) for the 1st 2-bit binary input.

Use Pin 30,29 (Bit 1, Bit 0) for the 2nd 2-bit binary input.

Use Pin 47,46,45 (Bit 2, Bit 1, Bit 0) for the 3-bit binary output.

**4 Bit Version**

Use Pin 26,27,28,29 (Bit 3, Bit 2, Bit 1, Bit 0) for the 1st 4-bit binary input.

Use Pin 30,31,32,33 (Bit 3, Bit 2, Bit 1, Bit 0) for the 2nd 4-bit binary input.

Use Pin 10,11,12,13,14 (Bit 4, Bit 3, Bit 2, Bit 1, Bit 0) for the 5-bit binary output.
