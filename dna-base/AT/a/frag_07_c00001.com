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
N -1.8508 0.3994 -0.0012
C -2.454 -0.8181 0.0001
O -1.8366 -1.8712 0.0004
H -2.3702 1.2653 -0.0015
H -0.8396 0.4301 -0.0019
H -3.5541 -0.7552 0.0008
*

