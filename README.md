# Comments on "Recursive Fibonacci Benchmark using top languages on Github" 
Notes:

- nim is obviously cheating
- whether 2.9bil is the 46th or actually the 47th (or the 48th) fibonacci number, is beside the point

Languages: ATS, C, C++, Forth (Gforth, SwiftForth, iForth), Lua, Nim, Zig

This code performs a recursive fibonacci to the 46th position with the result of 2,971,215,073.

Benchmarks run on:
 - Google PixelBook (eve, 2017)
 - OS: ChromeOS
 - Processor: 1.20GHz (3.3GHz turbo) i5-7Y57
 - Memory: 4GB (as available to Debian container)

Last benchmark was ran on September 28th, 2018

Canonical Forth implementation of FIB (single loop)

| Language   | Time, s | Compile                                 |
|------------|---------|-----------------------------------------|
| Zig        |  0.001  | `zig build-exe fibf.zig --release-fast` |
| Lua        |  0.002  | `luajit -O3 fibf.lua`                   |
| Nim        |  0.002  | `nim cpp -d:release fibf.nim`           |
| C++        |  0.003  | `g++ -O3 -o fibf fibf.cpp`              |
| C          |  0.003  | `gcc -O3 -o fibf fibf.c`                |
| ATS        |  0.004  | `patscc -O3 -o fibf-ats fibf.dats`      |
| SwiftForth |  0.005  | `sf fibf.fs`                            |
| gForth     |  0.020  | `gforth fibf.fs`                        |
| iForth     |  0.0    | `iforth include fibf-iforth.fs`         |


Benchmark version (recursive calls)

| Language | Time, s | Compile                                |
|----------|---------|----------------------------------------|
| Nim      |  0.4    | `nim cpp -d:release fib.nim`           |
| ATS      |  4.5    | `patscc -O3 -o fib-ats fib.dats`       |
| C++      |  5.3    | `g++ -O3 -o fib fib.cpp`               |
| C        |  5.4    | `gcc -O3 -o fib fib.c`                 |
| Zig      |  6.4    | `zig build-exe fib.zig --release-fast` |
| iForth   | 18      | `iforth include fib.fs`                |
| LuaJit   | 22      | `luajit -O3 fib.lua`                   |
| gForth   | 90      | `gforth fib.fs`                        |


## Versions

- ATS: 0.3.12
- Gforth: 0.7.3 (64bit)
- SwiftForth: 3.7.3
- iForth: 6.0.8
- GCC: 6.3.0
- Nim: 0.16.0
- Zig: 0.3.0
- LuaJIT: 2.0.4
