OPENQASM 3.0;
include "stdgates.inc";
bit[2] c;
ry(-pi/2) $2;
rz(-pi/2) $2;
rz(-pi) $4;
rx(-pi/2) $4;
cz $2, $4;
rx(1.2799081181291756) $2;
ry(pi/2) $4;
rz(-2.8507044449240713) $4;
cz $2, $4;
rz(pi/2) $2;
ry(-1.2799081181291747) $2;
ry(-pi/2) $4;
cz $2, $4;
rz(-pi/2) $2;
ry(pi/2) $2;
ry(pi) $4;
c[0] = measure $2;
c[1] = measure $4;
