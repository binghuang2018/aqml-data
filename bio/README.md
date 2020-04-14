
## Amons generation
```bash
lb=z # folder name storing amons
pwd=$PWD
for f in ??; do cd echo $f; $pwd/$f; genamon_oechem -k 8 -label $lb target/*.sdf >out-${lb}; done
```

## Computational methods

All computations were done by orca4 with the following command to generate orca4 input files.

  - For target molecule:
```bash
gen_orca_jobs -t optg -m b3lyp -b vdz target/??.sdf
```

  - For amons:
```bash
gen_orca_jobs -t optg -m b3lyp -b vdz -loose z/frag*sdf
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

