#!/bin/bash
gcc -std=c99 -march=native -msse3 -mfpmath=sse -O3 -o bin_test_c_gcc test.c -lm
clang -std=c99 -march=native -msse3 -mfpmath=sse -O3 -o bin_test_c_clang test.c -lm
dmd -ofbin_test_d_dmd -O -noboundscheck -inline -release test.d
ldc2 -O3 -ofbin_test_d_ldc test.d -release
gdc -O3 -o bin_test_d_gdc test.d -frelease -msse3 -mfpmath=sse -finline
gccgo -O3 -g -o bin_test_go_gccgo test.go
go build -o bin_test_go_gc test.go
rustc --opt-level 3 -o bin_test_rs test.rs
mcs -out:bin_test_cs test.cs
nim c -d:release --cc:gcc -o:bin_test_nim_gcc test.nim
nim c -d:release --cc:clang -o:bin_test_nim_clang test.nim
crystal -o bin_test_cr --release test.cr
javac test.java
