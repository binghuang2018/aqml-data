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
C -4.6589 -2.1196 0.003
H -4.144 -1.1564 0.0015
H -4.3768 -2.6846 -0.8882
H -5.7387 -1.9552 0.0032
H -4.3761 -2.6822 0.8954
*

