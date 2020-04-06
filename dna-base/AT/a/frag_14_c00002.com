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
C 5.2046 -0.9084 -0.0318
N 3.9926 -1.3487 -0.0263
C 3.0098 -0.401 0.013
C 1.7193 -0.7448 0.0223
H 5.4798 0.1608 -0.0071
H 6.039 -1.6273 -0.0628
H 3.2728 0.6555 0.0372
H 1.4255 -1.7889 -0.0012
H 0.9395 0.0065 0.0535
*

