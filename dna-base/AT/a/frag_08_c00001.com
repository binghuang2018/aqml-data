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
C 3.0438 -0.6005 -0.0004
C 1.7187 -0.7466 -0.0053
N 1.0375 -1.9307 -0.0107
H 3.7118 -1.4544 -0.005
H 3.4903 0.3883 -0.0047
H 1.0699 0.1283 -0.0148
H 1.5969 -2.7324 0.2704
H 0.1424 -1.8926 0.4715
*

