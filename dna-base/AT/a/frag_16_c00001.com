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
N -3.8646 1.5932 -0.0006
C -4.5051 0.3848 0.0009
C -3.9189 -0.8163 0.0012
C -4.668 -2.1083 0.0028
H -4.3725 2.3266 0.4888
H -5.5905 0.4773 -0.0036
H -4.4071 -2.6914 -0.8856
H -5.7523 -1.9588 0.0067
H -4.4009 -2.6926 0.8887
H -2.8881 1.5438 0.2795
H -2.8347 -0.8877 -0.007
*
