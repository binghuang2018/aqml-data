
# Amons generation
```bash
genamon_oechem -fixgeom -k 7 -ivdw -label g7v -nprocs 16 target/1uao.sdf >out-g7v &
```


# Ab-initio calculations

- Geometry of 1uao was optimized at the level of theory BV5LYP/cc-pVDZ with dispersion correction by Gaussian 09 (It's very difficult to converge the geometry by ORCA4).

- Static amons were generated, i.e., the geometry of any amon is as it is in the optimized geometry of 1uao

- single point energy for both amons and 1uao were calculated at b3lyp/cc-pvdz with DFT-D3 dispersion correction by ORCA4, with keywords

```bash
! b3lyp TIGHTSCF cc-pvdz def2/J RIJCOSX D3BJ
```

- polarizability and NMR calculation follow, using Gaussian 09

For NMR, the following keywords are used for calculation
```bash
   # nmr iop(3/76=1000002000, 3/77=0720008000, 3/78=0810010000) bv5lyp/cc-pVDZ
```

For polarizability,
```bash
   # polar iop(3/76=1000002000, 3/77=0720008000, 3/78=0810010000) bv5lyp/cc-pVDZ
```



# QML results

## Extensive properties

Running
```bash
aqml -train g7v -test target -rcut 6.0 -savek -p b3lypd3vdz
```
gives
```bash
...
    coeff= 1.0 llambda= 0.0001
   1     29 1819694.6308 1819694.6308  
   2     78    1423.0688    1423.0688 
   3    129     298.1394     298.1394 
   4    245     282.5000     282.5000 
   5    429     158.8612     158.8612 
   6    713      13.3503      13.3503 
   7   1087       0.4253      -0.4253 
 elapsed time:  142.82117533683777  seconds
```

Running
```bash
aqml -train amons -test target -rcut 6.0 -c 2.5 -p alpha 
```
gives
```bash
...
    coeff= 2.5 llambda= 0.0001
   4      2     311.1044    -311.1044  
   8     16      19.6529     -19.6529  
  12     37       7.2990      -7.2990  
  16     62       4.6945       4.6945  
  20     72       1.9395       1.9395  
  24     80       0.0865       0.0865  
 elapsed time:  19.248868465423584  seconds
```



Running
```bash
aqml -train amons -test target -rcut 6.0 -p nmr -savek -z 6 -l 8
```
gives
```bash
...
    coeff= 1.0 llambda= 1e-08
   4      2      60.6571      78.6370     125.3444 
   8     16       5.0152       8.8877      48.0093 
  12     37       2.7652       4.0137      12.5287 
  16     62       1.6086       2.2887       8.0501 
  20     72       1.2343       1.7717       5.6478 
  24     80       1.0171       1.3765       4.7270 
 elapsed time:  0.6814966201782227  seconds
```

Running
```bash
aqml -train amons -test target -rcut 6.0 -p nmr -savek -z 7 -l 8
```
gives
```bash
...
    coeff= 1.0 llambda= 1e-08
   4      2          nan          nan          nan  
   8     16      19.1095      24.7693      48.7220  
  12     37       6.4871       8.6598      20.9904  
  16     62       3.7850       5.0114       8.5343  
  20     72       2.5996       3.0849       5.1194  
  24     80       3.0933       3.8426       6.8297  
 elapsed time:  0.45099782943725586  seconds
```

Running
```bash
aqml -train amons -test target -rcut 6.0 -p nmr -savek -z 1 -l 8
```
gives
```bash
...
    coeff= 1.0 llambda= 1e-08
   4      2       3.5781       4.7543      10.6237  
   8     16       0.9361       1.4618       6.8636  
  12     37       0.4425       0.7457       3.2511  
  16     62       0.2397       0.4135       2.2182  
  20     72       0.1849       0.2528       1.0215  
  24     80       0.1773       0.2360       0.6424  
 elapsed time:  1.2857306003570557  seconds
```

## Atomic properties

Running
```bash
aqml -train amons -test target -rcut 6.0 -p chgs -reusek -l 8 -z 6 
```
gives
```bash
    coeff= 1.0 llambda= 1e-08
   4      2       0.0978       0.1120       0.2503  
   8     16       0.0591       0.0844       0.2785  
  12     37       0.0226       0.0331       0.1240  
  16     62       0.0105       0.0147       0.0447  
  20     72       0.0089       0.0133       0.0410  
  24     80       0.0065       0.0083       0.0193  
 elapsed time:  0.7069451808929443  seconds
```

Running
```bash
aqml -train amons -test target -rcut 6.0 -p chgs -reusek -l 8 -z 7 
```
gives
```bash
    coeff= 1.0 llambda= 1e-08
   5      5       0.0355       0.0479       0.1138  
   8     16       0.0343       0.0430       0.0972  
  12     37       0.0108       0.0152       0.0387  
  16     62       0.0097       0.0145       0.0367  
  20     72       0.0044       0.0056       0.0122  
  24     80       0.0035       0.0048       0.0087  
 elapsed time:  0.44499731063842773  seconds
```

Running
```bash
aqml -train amons -test target -rcut 6.0 -p chgs -reusek -l 8 -z 1 
```
gives
```bash
    coeff= 1.0 llambda= 1e-08
   4      2       0.0850       0.1139       0.2499  
   8     16       0.0237       0.0344       0.1233  
  12     37       0.0179       0.0284       0.0973  
  16     62       0.0095       0.0148       0.0642  
  20     72       0.0073       0.0098       0.0356  
  24     80       0.0057       0.0070       0.0156  
 elapsed time:  1.3020648956298828  seconds
```

Running
```bash
aqml -train amons -test target -rcut 6.0 -p chgs -savek -l 8 -z 8 
```
gives
```bash

  size of k1:  (232, 232)  size of k2:  (18, 232)
    coeff= 1.0 llambda= 1e-08
   4      2       0.0503       0.0585       0.1159  
   8     16       0.0201       0.0258       0.0510  
  12     37       0.0175       0.0240       0.0607  
  16     62       0.0120       0.0189       0.0596  
  24     80       0.0064       0.0093       0.0263  
 elapsed time:  14.948057174682617  seconds
```
