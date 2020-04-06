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
C 1.6387 -0.7085 -0.0016
N 1.0355 -1.9151 -0.0061
N 0.9793 0.3908 -0.0021
H 2.7413 -0.7494 0.0
H 1.502 -2.6659 0.4872
H 0.0412 -1.8525 0.1892
H 1.6317 1.1827 -0.0096
*

