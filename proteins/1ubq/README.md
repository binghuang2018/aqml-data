

# Amons generation
To generate amons used for prediction of total energy, use the following command:
```bash
genamon -fixgeom -k 7 -ivdw -label g7v -nprocs 12 target/1ubq.pdb >out-g7v &
```

To generate amons used for predicting atomic properties, use instead
```bash
molcut -k 24 -rcut 3.6 -lb amons -q target/1ubq.pdb >amons.out &
```


# Details about the files in this folder:

- `g7v/`: the directory containing all amons (N_I<=7) , including both covalent and vdW amons. Single point energies calculated at the level of PBE/Def2-SVP are to be used for energy prediction of 1ubq calculated at the same level. 

- `amons`: cutout amons used for prediction of properties of long-range nature, i.e., NMR shifts.


# AQML results

## Total energy

```bash
aqml -p pbedef2svp -train g7v -test target 
```
gives the following results:
```bash
...
   1     51          nan          nan
   2    412    8585.7105    8585.7105  (DressedAtom mae=  10761.7528)
   3    858     351.8642     351.8642  (DressedAtom mae=   3837.3767)
   4   1912     495.7883     495.7883  (DressedAtom mae=   3575.1935)
   5   3603     152.7714     152.7714  (DressedAtom mae=   3004.2573)
   6   5866     171.0327     171.0327  (DressedAtom mae=   2974.6095)
   7   9305       7.6426       7.6426  (DressedAtom mae=   2589.1867)
 elapsed time:  10306.493880271912  seconds
```
where column 1-5 indicate `N_I` (the number of heavy atom), `MAE` (mean absolute error), `RMSE` (root mean squared error), prediction error of dressed atom approximation. `nan` corresponds to invalid prediction.


## Atomic properties

- NMR shifts for carbon atoms (`-z 6`)
Running
```bash
aqml -train amons -test target -rcut 6.0 -p nmr -z 6 -reusek -l 8
```
gives 
```bash
    coeff= 1.0 llambda= 1e-08
   4     56      12.3484      30.5714     147.6090  
   8    258       5.8944       8.5315      31.3595  
  12    548       1.7273       2.3267       9.6880  
  16    758       1.0404       1.3212       4.7472  
  20    818       1.0288       1.3362       4.8323  
  24    839       0.9637       1.2611       5.4550  
 elapsed time:  51.16828274726868  seconds
```

- NMR shifts for nitrogen atoms
Running
```bash
aqml -train amons -test target -rcut 6.0 -p nmr -z 7 -reusek -l 8
```
gives
```bash
    coeff= 1.0 llambda= 1e-08
   4     56      28.2382      33.5039      73.3895  
   8    258      11.7877      15.8651      40.1243  
  12    548       4.3347       5.8884      17.7252  
  16    758       2.6553       3.6278      12.7952  
  20    818       2.7730       3.6976      13.8478  
  24    839       2.5751       3.3562      12.8211  
 elapsed time:  6.294192314147949  seconds
```

- NMR shifts for hydrogen atoms
Running
```bash
aqml -train amons -test target -rcut 6.0 -p nmr -z 1 -reusek -l 8
```
gives
```bash
    coeff= 1.0 llambda= 1e-08
   4     56       1.1829       1.8610      13.6136 
   8    258       0.6047       1.0418       6.8975 
  12    548       0.3208       0.5765       9.0347 
  16    758       0.2446       0.3391       1.5167 
  20    818       0.2219       0.2973       1.1452 
  24    839       0.2116       0.2788       1.0870 
 elapsed time:  267.1362326145172  seconds
```


