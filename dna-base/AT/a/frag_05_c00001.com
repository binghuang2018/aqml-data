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
C -2.4551 1.6441 -0.0022
O -1.853 2.7105 -0.0036
H -3.5555 1.5905 -0.0015
H -1.9326 0.6742 -0.0015
*

