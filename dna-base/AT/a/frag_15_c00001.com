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
C 1.4897 1.5513 0.001
N 2.8435 1.7149 0.0001
C 3.6643 0.7265 0.0004
N 0.8595 0.4301 0.0023
H 0.8961 2.4818 0.0004
H 4.7463 0.9377 -0.0003
H 3.3922 -0.34 0.0013
H 1.4831 -0.3691 0.0028
*

