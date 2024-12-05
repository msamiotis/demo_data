OPENQASM 3.0;
include "stdgates.inc";
bit[2] c;
ry(-pi/2) $2;
rz(-pi/2) $2;
rz(-pi) $4;
rx(-pi/2) $4;
cz $2, $4;
rx(pi/3) $2;
ry(pi/2) $4;
rz(-5*pi/6) $4;
cz $2, $4;
rz(pi/2) $2;
ry(-pi/3) $2;
ry(-pi/2) $4;
cz $2, $4;
rz(-pi/2) $2;
ry(pi/2) $2;
ry(pi) $4;
c[0] = measure $2;
c[1] = measure $4;
