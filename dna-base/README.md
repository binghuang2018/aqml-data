
## Amons generation

Take the complex GC for example
```bash
genamon -k 8 -k2 11 -ivdw -label a target/GC.sdf >out-a
```

## Computational methods

Level of theory: orca4/b3lyp/cc-pvdz + dft-d3

orca4 input files were generated using `gen_orca_jobs`.

  - For target molecule:
```bash
gen_orca_jobs -t optg -m b3lyp -b vdz -disp target/??.sdf
```

  - For amons:
```bash
gen_orca_jobs -t optg -m b3lyp -b vdz -disp -loose a/frag*sdf
```

