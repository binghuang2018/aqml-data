
Below, we take the first molecule as an example for reproduction.

First of all, go to the corresponding subfolder 01/, i.e.,
```bash
cd 01/
```

## Amons generation


```bash
lb=a # folder name, used for storing amons
genamon_oechem -k 8 -label $lb target/*.sdf >out-${lb}
```

## Computational methods

All computations were done by orca4 with the following command to generate orca4 input files.

  - For target molecule:
```bash
gen_orca_jobs -t optg -m b3lyp -b vdz target/??.sdf
```

  - For amons:
```bash
gen_orca_jobs -t optg -m b3lyp -b vdz -loose a/frag*sdf
```

## Run orca jobs

Run all orca jobs using the generated orca input files from the step above


## Generate reference data
Once all calculations are done, use the following script to extract energy (and other properties) from the output files
```bash
orca2xyz -p e a/*.out target/*.out
```
One `xyz` file would be created for each input `out` file. One should produce exactly the same `xyz` file as in folder `z/`.

## AQML 
Now we are ready to run aqml model to predict the property of target molecule, i.e.,
```bash
aqml -train a/ -test target/
```
The corresponding result is shown in file README.md


```


## Test bio-molecules

- 01: amphetamine
- 02: aspirin
- 03: cholesterol
- 04: cholic acid
- 05: cocaine
- 06: glucosepane
- 07: progesterone
- 08: testosterone
- 09: vitamin A1
- 10: vitamin B12
- 11: vitamin B3
- 12: vitamin B5
- 13: vitamin B6
- 14: vitamin B7
- 15: vitamin C
- 16: vitamin D2
- 17: vitamin D3
- 18: vitamin E
- 19: abacavir
- 20: abiraterone
- 21: amitriptyline
- 22: bromocriptine
- 23: efavirenz
- 24: estazolam

