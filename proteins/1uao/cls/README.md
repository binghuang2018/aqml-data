Running
```bash
aqml -train amons -test target -rcut 6.0 -p cls -l 8 -z 6 -reusek 
```
gives
```bash

       found kernel file:  data/amons-rc6.0-z6-kernels.npz
       kernels read with success
 nm1= 80 shp1= (650, 650) shp2= (48, 650)
nz1= 650 nz2= 48
    coeff= 1.0 llambda= 1e-08
   4      2       0.7793       1.0695       2.6472  
   8     16       0.5714       0.7787       1.8319  
  12     37       0.4029       0.6385       2.2882  
  16     62       0.3644       0.4585       1.2735  
  24     80       0.2059       0.2862       1.2208  
 elapsed time:  0.4040794372558594  seconds
```
Running
```bash
aqml -train amons -test target -rcut 6.0 -p cls -savek -l 8 -z 7 
```
gives
```bash

  size of k1:  (157, 157)  size of k2:  (11, 157)
    coeff= 1.0 llambda= 1e-08
   4      2          nan          nan          nan  
   8     16       0.5842       0.6333       1.0190  
  12     37       0.8737       1.0225       1.7135  
  16     62       0.8984       1.0252       2.2345  
  24     80       0.4092       0.5100       1.0531  
 elapsed time:  14.904276847839355  seconds
```
Running
```bash
aqml -train amons -test target -rcut 6.0 -p cls -savek -l 8 -z 8 
```
gives
```bash

  size of k1:  (232, 232)  size of k2:  (18, 232)
    coeff= 1.0 llambda= 1e-08
   4      2       0.7181       0.8628       1.6760  
   8     16       0.5060       0.6031       1.3563  
  12     37       0.4815       0.6200       1.3308  
  16     62       0.3276       0.4412       1.3083  
  24     80       0.2312       0.3075       0.8178  
 elapsed time:  15.335529565811157  seconds
```
