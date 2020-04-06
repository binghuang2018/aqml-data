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
N -3.983 1.7052 -0.0088
C -2.4276 -0.9233 -0.04
O -1.9181 -2.0378 -0.0467
C -3.8893 -0.7514 0.0329
C -4.4992 0.4377 0.043
H -3.0589 1.7954 -0.4219
H -4.6317 2.4048 -0.3676
H -1.8217 -0.0049 -0.0788
H -4.4594 -1.6719 0.0941
H -5.5867 0.4509 0.1296
*

