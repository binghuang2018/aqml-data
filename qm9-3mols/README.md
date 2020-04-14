
# Amons generation
Take the complex with ID 01 as an example:
```bash
cd 01/
genamons_oechem -k 7 target/frag_01.sdf
```


# Computational methods

All computations were done by orca4 with the following command to generate orca4 input files.

  - For target molecule:
```bash
gen_orca_jobs -t optg -m b3lyp -b vdz target/??.sdf
```

  - For amons:
```bash
gen_orca_jobs -t optg -m b3lyp -b vdz -loose z/frag*sdf
```

