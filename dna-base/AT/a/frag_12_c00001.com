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
C 3.7391 0.6789 0.008
C 3.1034 -0.498 0.0089
C 1.629 -0.6428 -0.0062
N 0.7477 0.2956 -0.0221
H 4.8248 0.7102 0.0196
H 3.2267 1.6335 -0.004
H 3.6616 -1.4287 0.0212
H 1.2749 -1.6881 -0.0031
H 1.1845 1.2194 -0.0235
*

