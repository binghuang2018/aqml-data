%pal nprocs 3 end
%maxcore 1000
! b3lyp TIGHTSCF D3BJ
! cc-pvdz def2/J RIJCOSX
! Opt

%geom
maxiter 60
TolE 1e-4
TolRMSG 2e-3
TolMaxG 3e-3
TolRMSD 2e-2
TolMaxD 3e-2
end

*xyz 0 1
N -3.7839 1.5411 0.0009
C -2.4277 1.7124 0.0028
O -1.9015 2.819 0.0055
C -4.0099 -0.8628 -0.0038
C -4.505 0.3773 -0.0021
H -4.2957 2.4178 0.0019
H -5.5843 0.5215 -0.0031
H -1.8386 0.7842 0.0018
H -2.951 -1.0897 -0.003
H -4.685 -1.7142 -0.0062
*

