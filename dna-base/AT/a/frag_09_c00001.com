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
C -4.5512 0.3904 0.0003
C -3.941 -0.801 0.0011
C -4.6588 -2.1106 0.003
H -3.9739 1.3099 -0.0011
H -5.6333 0.4781 0.001
H -2.8539 -0.8395 0.0003
H -4.3818 -2.6887 -0.8838
H -5.7462 -1.9859 0.0037
H -4.3805 -2.6869 0.8906
*

