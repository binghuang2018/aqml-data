
Experimental geometry of 1uao (file raw/1ubq.pdb) was taken from Protein Data Bank (PDB) https://www.rcsb.org/structure/1ubq. 

Before carrying out ab-initio calculations, all charges (of some N and O atoms) are removed and hydrogens are added to saturate valencies of heavy atoms by OEChem. The ready-to-use pdb file is 1ubq.pdb

Experimental geometry was used throughout for electronic structure calculation. 

- for single point energy calculation, orca4 was used

```bash
! b3lyp TIGHTSCF D3BJ cc-pvdz def2/J RIJCOSX
```


- for NMR shift calculation, g09 was used with the following keywords:

```bash
# nmr  iop(3/76=1000002000, 3/77=0720008000, 3/78=0810010000) bv5lyp/cc-pVDZ
```


