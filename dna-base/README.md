
# Computational methods

 - B3LYP/cc-pVDZ plus dft-d3 dispersion correction
 - Geometry and energies were obtained at the same level of theory

# Amons generation

genamon -k 8 -noextra T target/*sdf >out &

genamon -k 6 -k2 6 -ivdw T -ivao T -noextra T target/*sdf >out_v &

gen_orca_jobs -t optg -m b3lyp -b vdz -loose -wc -n 6 -disp a*/*f


