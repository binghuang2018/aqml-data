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
N -3.8465 1.5837 -0.0013
H -2.8728 1.7045 0.2736
H -4.1135 0.6518 0.3129
H -4.3824 2.2365 0.5688
*

