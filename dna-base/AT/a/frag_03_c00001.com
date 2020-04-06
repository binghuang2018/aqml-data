%pal nprocs 3 end
%maxcore 1000
! b3lyp TIGHTSCF D3BJ
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
C -4.5499 0.3955 0.0003
C -3.9449 -0.7955 0.0011
H -5.6326 0.4735 0.001
H -3.9743 1.3158 -0.001
H -2.8622 -0.8735 0.0004
H -4.5205 -1.7158 0.0024
*

