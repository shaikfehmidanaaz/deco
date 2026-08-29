# 2-to-4 Decoder using Verilog

## Overview

A **2-to-4 Decoder** is a combinational logic circuit that converts a 2-bit binary input into one of four unique output lines. Only one output is HIGH for each input combination.

## Inputs

- A
- B

## Outputs

- Y0
- Y1
- Y2
- Y3

## Logic Equations

Y0 = A'B'

Y1 = A'B

Y2 = AB'

Y3 = AB

## Truth Table

| A | B | Y0 | Y1 | Y2 | Y3 |
|---|---|----|----|----|----|
|0|0|1|0|0|0|
|0|1|0|1|0|0|
|1|0|0|0|1|0|
|1|1|0|0|0|1|

## Project Files

- `decoder.v` – Verilog design
- `decoder_tb.v` – Testbench
- `decoder.vcd` – Waveform file
- `simulation_result.png` – Simulation waveform screenshot

## Simulation

### Compile

```bash
iverilog -o decoder decoder.v decoder_tb.v
```

### Run

```bash
vvp decoder
```

### Open Waveform

```bash
gtkwave decoder.vcd
```

## Applications

- Memory address decoding
- Instruction decoding
- Data routing
- Digital communication systems
- Multiplexer and demultiplexer circuits

## Expected Output

| Input | Active Output |
|-------|---------------|
|00|Y0|
|01|Y1|
|10|Y2|
|11|Y3|
