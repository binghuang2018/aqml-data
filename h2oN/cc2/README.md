

# Computational methods

- Single point CCSD(T) energies were calculated on G09/MP2/6-31g(d) geometry




# QML results

Running
```bash
aqml -p cc2631gd -train ni-1-10/ -test target 
```
gives
```bash

    coeff= 1.0 llambda= 0.0001
   1      1     215.8950     221.7619     297.5045  (DressedAtom mae=    297.5045)
   2      2      39.5513      40.9859      56.7975  (DressedAtom mae=    238.4538)
   3      2      39.5513      40.9859      56.7975  (DressedAtom mae=    238.4538)
   4      3      32.1686      33.1368      45.7301  (DressedAtom mae=    133.5421)
   5      4      27.8108      29.0908      44.5677  (DressedAtom mae=    113.2269)
   6      5      36.8788      38.1508      56.1861  (DressedAtom mae=    104.0456)
   7      5      36.8788      38.1508      56.1861  (DressedAtom mae=    104.0456)
   8      6       9.9867      10.7803      17.8510  (DressedAtom mae=     72.9076)
   9      7      11.0629      12.2415      23.0591  (DressedAtom mae=     60.0198)
  10      8       3.1543       4.1304       8.3896  (DressedAtom mae=     50.8993)
 elapsed time:  1.1052122116088867  seconds
```
