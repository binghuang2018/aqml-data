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
N 2.8039 1.8102 0.0252
C 3.6341 0.8238 0.0189
N 4.0066 -1.5884 -0.0236
C 3.1763 -0.602 -0.0176
H 1.8296 1.4903 0.0025
H 4.723 0.9837 0.0403
H 4.9809 -1.2685 -0.0007
H 2.0875 -0.7619 -0.0392
*

