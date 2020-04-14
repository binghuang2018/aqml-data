
# Test polymers
- 01: PE, polyethylene
- 02: PA, polyacetylene
- 03: (ala)10, alanine peptide
- 04: PLA, polyactic acid
- 05: bQAPS, backbone of quaternary ammonium polysulphone


# Amons generation
Take the complex with ID 01 as an example:
```bash
cd 01/
genamons_oechem -k 7 target/frag_01.sdf
```
The only exception is for complex 02, for which `-k 8` was used instead. This is necessary as larger amons (i.e., with `N_I>=8`) are necessary to represent the delocalized nature of highly conjugated systems, e.g., polyacelene.


# Computational methods

- For geometry optimization (optg), it turns out to be very difficult to converge to local mimima by ORCA4 for these floppy polymers; Gaussian 09, however can achieve fast convergence and is therefore used for optg.
- Level of theory for optg: BV5LYP/cc-pVDZ
- Single point energies were then obtained using orca4 with the following keywords
```bash
! b3lyp TIGHTSCF nori cc-pvdz
```

- For amons, optg was done using orca4 with controling keywords:

```bash
! b3lyp TIGHTSCF nori
! cc-pvdz
! Opt

%geom
maxiter 60
TolE 1e-4
TolRMSG 2e-3
TolMaxG 3e-3
TolRMSD 2e-2
TolMaxD 3e-2
end
```


