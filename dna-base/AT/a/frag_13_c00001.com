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
C -4.5691 0.4012 0.001
C -2.4525 -0.8274 -0.0023
O -1.8559 -1.8966 -0.0003
C -3.9275 -0.7722 0.0035
H -4.0469 1.3528 -0.0053
H -5.6548 0.4304 0.0053
H -1.9258 0.1412 -0.0085
H -4.448 -1.7226 0.0098
*

