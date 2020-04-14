



Running
```bash
aqml -train g7 -test target -p b3lypvdz -ieaq -prog orca
```
gives 
```bash
    coeff= 1.0 llambda= 0.0001
   1      2     830.3097     830.3097 
   2      5      85.9937      85.9937 
   3      9       5.3315       5.3315 
   4     14       7.6547       7.6547 
   5     21       0.1254       0.1254 
   6     26       0.6833      -0.6833 
   7     30       0.2778       0.2778 

atomic energies
    #atm  #Z     #E_A 
       1   6  -157.62
       2   6  -164.19
       3   6  -157.63
       4   8   -92.06
       5   6  -161.37
       6   6  -154.22
       7   6  -154.11
       8   6  -157.24
       9   8   -96.19
      10   1   -64.37
      11   1   -64.46
      12   1   -64.42
      13   1   -64.39
      14   1   -64.43
      15   1   -64.41
      16   1   -63.15
      17   1   -63.75
      18   1   -63.75
      19   1   -63.37
 elapsed time:  1.112466812133789  seconds
```


Running:
```bash
aqml -train g7 -test target -p alpha -c 2.5
```
gives
```bash
    coeff= 2.5 llambda= 0.0001
   1      2      42.4885      42.4885 
   2      5       0.3320      -0.3320 
   3      9       5.2142       5.2142 
   4     14       6.4432       6.4432 
   5     21       0.9088      -0.9088 
   6     26       0.6374      -0.6374 
   7     30       0.1872      -0.1872 
 elapsed time:  1.0287492275238037  seconds
```

 Running
 ```bash
aqml -train g7 -test target -p nmr -z 1 -lambda 8
```
gives 
```bash
...
  size of k1:  (206, 206)  size of k2:  (10, 206)
    coeff= 1.0 llambda= 1e-08
   1      2       2.6284       3.6333       7.0994  
   2      5       0.5494       0.6639       1.2357  
   3      9       1.9400       2.5837       4.8364  
   4     14       0.6342       0.8293       1.7692  
   5     21       0.2593       0.4083       1.0279  
   6     26       0.1503       0.1954       0.3566  
   7     30       0.0806       0.1270       0.3514  
 elapsed time:  0.9915311336517334  seconds
```

Running
```bash
aqml -train g7 -test target -p nmr -z 6 -lambda 8
```
gives
```bash
...
  size of k1:  (106, 106)  size of k2:  (7, 106)
    coeff= 1.0 llambda= 1e-08
   1      2      96.0723     106.4678     161.7514  
   2      5      16.9739      18.5193      27.3373  
   3      9       6.3498       6.9988      11.5718  
   4     14       8.8093      10.5959      18.5066  
   5     21       2.4540       4.0916      10.0820  
   6     26       1.4306       1.7594       3.5947  
   7     30       1.9770       2.7053       5.7432  
 elapsed time:  0.9497666358947754  seconds
```


Running
```bash
aqml -train g7 -test target -p chgs -z 1 -labmda 8 
```
gives
```bash

Running
```bash
aqml -train g7 -test target -p chgs -z 1 -l 8 
```
gives
```bash

  size of k1:  (206, 206)  size of k2:  (10, 206)
    coeff= 1.0 llambda= 1e-08
   1      2       0.0284       0.0376       0.0723  
   2      5       0.0186       0.0245       0.0524  
   3      9       0.0341       0.0446       0.1005  
   4     14       0.0178       0.0273       0.0662  
   5     21       0.0048       0.0059       0.0102  
   6     26       0.0047       0.0055       0.0093  
   7     30       0.0029       0.0034       0.0057  
 elapsed time:  0.9812309741973877  seconds
```
Running
```bash
aqml -train g7 -test target -p chgs -z 6 -l 8 
```
gives
```bash

  size of k1:  (106, 106)  size of k2:  (7, 106)
    coeff= 1.0 llambda= 1e-08
   1      2       0.1780       0.2064       0.3760  
   2      5       0.1092       0.1407       0.2877  
   3      9       0.0740       0.0941       0.1657  
   4     14       0.0721       0.0896       0.1328  
   5     21       0.0385       0.0604       0.1413  
   6     26       0.0217       0.0356       0.0826  
   7     30       0.0114       0.0163       0.0346  
 elapsed time:  0.897897481918335  seconds
```
Running
```bash
aqml -train g7 -test target -p chgs -z 8 -l 8 
```
gives
```bash

  size of k1:  (27, 27)  size of k2:  (2, 27)
    coeff= 1.0 llambda= 1e-08
   1      2       0.0463       0.0566       0.0788  
   2      5       0.0654       0.0749       0.1018  
   3      9       0.0427       0.0500       0.0688  
   4     14       0.0307       0.0362       0.0498  
   5     21       0.0121       0.0142       0.0196  
   6     26       0.0039       0.0051       0.0071  
   7     30       0.0040       0.0043       0.0056  
 elapsed time:  0.9005343914031982  seconds
```
