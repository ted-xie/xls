# XLScc syntax examples

This directory contains syntax examples for the C++ frontend of XLS called
XLScc. Note that the build system of these examples is Make instead of Bazel,
since external users would be expected to use XLS "out-of-tree".

## Usage
All examples in this directory support the same core `make` syntax.
* `make ir`: Convert C++ to XLS IR.
* `make opt`: Optimize the generated IR.
* `make vlog`: Generate Verilog code from the optimized IR.

## Examples
### src/add_1
* Simple syntax examples that adds two integers together. 
