OPENQASM 3.0;
include "stdgates.inc";
bit[2] c;
x $4;
c[0] = measure $2;
c[1] = measure $4;
