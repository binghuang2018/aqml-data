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
C 3.0983 -0.7092 -0.0055
C 1.7562 -0.6816 -0.0062
N 1.0926 -1.8863 -0.014
N 0.9782 0.4436 0.0012
C 1.4846 1.6264 0.0086
H 3.6287 -1.656 -0.03
H 3.7247 0.1705 -0.0032
H 1.5557 -2.5941 0.5443
H 0.1359 -1.7232 0.2894
H 2.5567 1.8759 0.009
H 0.8 2.4902 0.0136
*

