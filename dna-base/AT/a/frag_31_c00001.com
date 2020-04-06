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
N -3.8424 1.658 0.0058
C -2.4896 1.6205 0.0066
O -1.8383 2.6585 0.0098
N -1.8909 0.3959 0.0027
C -2.4398 -0.86 -0.0033
O -1.7697 -1.8848 -0.0061
H -4.33 1.0283 0.6272
H -4.1937 2.6081 0.0694
H -0.881 0.4227 -0.0041
H -3.5395 -0.8787 -0.0189
*

