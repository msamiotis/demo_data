OPENQASM 3.0;
include "stdgates.inc";
bit[2] c;
ry(-pi/2) $2;
rz(-pi/2) $2;
rz(-pi) $4;
rx(-pi/2) $4;
cz $2, $4;
rx(0.9308422677303109) $2;
ry(pi/2) $4;
rz(-2.5016385945252066) $4;
cz $2, $4;
rz(pi/2) $2;
ry(-0.9308422677303101) $2;
ry(-pi/2) $4;
cz $2, $4;
rz(-pi/2) $2;
ry(pi/2) $2;
ry(pi) $4;
c[0] = measure $2;
c[1] = measure $4;
