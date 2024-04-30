# MIPS Processor Design Using VHDL

## Project Overview
This project involves the design of a MIPS processor using VHDL. It simulates the data and control paths of a basic computer system. The processor is capable of handling R-type, I-type, and J-type instructions.

## Phase 1: Basic MIPS CPU
- **Objective**: Implement a basic MIPS CPU that supports R-type instructions like AND, OR, ADD, SUB, and NOR.
- **Components Implemented**:
  - **Register File**: Supports simultaneous read operations and a single write operation.
  - **ALU**: 32-bit full ALU capable of performing AND, OR, ADD, SUB, and NOR operations.
  - **Datapath**: Integrates the Register File and ALU for processing instructions.

## Phase 2: Enhanced MIPS CPU
- **Objective**: Enhance the MIPS CPU to support I-type (lw, sw, beq) and J-type instructions.
- **Components Added**:
  - **Control Module**: Manages all control signals.
  - **MIPS Module**: Integrates the Datapath with the Control Module.
  - **Instruction and Data Memory Module**: Stores the MIPS assembly program and handles data storage and retrieval.
- **Enhancements**:
  - **Datapath Update**: Integration of new components like Shift-Left, MUX2x1, and Adder.
  - **Control Unit**: Handles the enables and selectors for Datapath components and ALU operations.
 
## Directory Structure

### Phase (1)
  - RegisterFile.vhdl
  - ALU.vhdl
  - Datapath.vhdl
    
### Phase (2)
  - ControlModule.vhdl
  - MIPSModule.vhdl
  - MemoryModules.vhdl
  - EnhancedDatapath.vhdl
  - ControlUnit.vhdl
