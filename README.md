# Assembly Memory Access Violation Bug

This repository demonstrates a common error in assembly programming: accessing memory without proper bounds checking. The bug involves calculating a memory address and accessing it without verifying its validity. This can lead to segmentation faults or other memory-related crashes.

The `bug.asm` file contains the erroneous code, while `bugSolution.asm` shows how to add bounds checking to prevent the error.

## Bug Description
The problematic assembly instruction attempts to access memory at an address calculated dynamically.  Without checking if the calculated address is within the bounds of allocated memory, this code is vulnerable to crashes.

## Solution
The solution involves incorporating bounds checks before attempting to access the calculated address. This ensures that the program only attempts to access memory that has been allocated and is within valid ranges.