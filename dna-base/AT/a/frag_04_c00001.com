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
C 5.1842 -0.8395 0.0011
N 4.1047 -1.5399 -0.001
H 5.1627 0.2623 0.0028
H 6.1708 -1.3291 0.0011
H 3.2842 -0.9227 -0.0006
*

