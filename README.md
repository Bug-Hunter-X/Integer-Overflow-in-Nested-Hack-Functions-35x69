# Integer Overflow Bug in Hack

This repository demonstrates a potential integer overflow bug in Hack code. The bug occurs when performing arithmetic operations that result in values exceeding the maximum representable value for the `int` data type.  The code contains three functions (`foo`, `bar`, `baz`) that nest calls.  If the input to `baz` is sufficiently large, intermediate calculations in `bar` and `baz` might lead to integer overflow.

**How to reproduce:**
1. Compile and run the code in `bug.hack`.
2. Test with various input values, noting the behavior when the input approaches or exceeds the maximum value for the `int` data type.

**Solution:**
The provided solution (`bugSolution.hack`) uses a type that can handle larger values.  This addresses the integer overflow issue.  Consider using more suitable types for larger values in your Hack code.