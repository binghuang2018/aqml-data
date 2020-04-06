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
N 3.958 -1.5351 0.0003
C 3.1887 -0.5026 0.0008
C 1.703 -0.6794 -0.0045
N 0.8951 0.3271 -0.004
H 4.9413 -1.2387 0.0043
H 3.561 0.5336 0.005
H 1.3431 -1.7202 -0.0089
H 1.3955 1.2207 0.0004
*

