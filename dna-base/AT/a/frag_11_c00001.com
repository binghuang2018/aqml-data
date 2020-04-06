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
N -3.8125 1.5711 -0.0038
C -2.4644 1.6445 -0.0017
O -1.8472 2.6955 -0.0044
N -1.8717 0.4315 0.0037
H -4.2071 0.8305 0.5582
H -4.2543 2.4728 0.1291
H -2.3275 -0.2761 -0.5546
H -0.8693 0.4845 -0.1317
*

