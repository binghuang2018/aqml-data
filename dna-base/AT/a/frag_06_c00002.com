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
N 4.9861 0.5665 -0.0136
C 5.1179 -0.778 0.0074
N 4.1496 -1.616 0.0118
H 4.0848 0.9404 -0.2818
H 5.7722 1.0986 -0.3709
H 6.1658 -1.1222 0.0296
H 3.2573 -1.1184 0.0182
*

