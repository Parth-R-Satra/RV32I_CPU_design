# RV32I Processor Microarchitectures

This project implements and verifies single-cycle, 5-stage pipelined, and microcoded multi-cycle RV32I processors in Verilog using AMD Vivado.
The processors support a selected RV32I instruction subset covering arithmetic, logical, memory, branch, and jump operations.

The pipelined processor was progressively enhanced with EX/MEM and MEM/WB forwarding, WB-to-ID bypassing, load-use hazard detection, pipeline stalls, bubble insertion, and branch/jump flushing.
The final design also includes a 16-entry, 2-bit saturating branch predictor with misprediction recovery.

A directed loop test executed 8 conditional branches, achieving 6 correct predictions, 2 mispredictions, and 75% prediction accuracy, while all forwarding, hazard detection, branch recovery, and predictor verification tests passed.
