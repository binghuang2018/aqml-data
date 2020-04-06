%pal nprocs 6 end
%maxcore 1000
! b3lyp TIGHTSCF nopop D3BJ
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
C -2.4628 1.6213 -0.0023
O -1.8694 2.6907 -0.0041
N -1.8316 0.4102 -0.0013
C -2.4555 -0.8046 0.0003
O -1.8556 -1.8705 0.0007
H -3.5631 1.5533 -0.0015
H -0.8214 0.4133 -0.0022
H -3.5562 -0.7433 0.0012
*

