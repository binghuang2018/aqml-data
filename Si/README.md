
## Computational method

All computations were done by vasp with the following settings
```bash
ISMEAR = 0; SIGMA = 0.1
ENCUT = 340; GGA = PE
ALGO = Fast
PREC = Normal
LREAL= .FALSE.
AMIN = 0.01
EDIFFG = -0.05
NSW = 200
IBRION = 2 ! use the conjugate gradient algorithm
```
Projected augmented wave (PAW) potentials were used.


## AQML results

Running
```bash
aqml -s1 amons/ -s2 target/ -p pbe340 -pbc 
```
gives
```bash
  coeff= 1.0 llambda= 0.0001
   5      1     170.5375     170.5375     170.5375  (DressedAtom mae=   -209.9576)
  17      2       7.3333       7.3333       7.3333  (DressedAtom mae=     -7.3333)
  18      3       0.4583       0.4583       0.4583  (DressedAtom mae=      0.7829)
 elapsed time:  13.048477411270142  seconds
```

