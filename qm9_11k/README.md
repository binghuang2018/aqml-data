
The overall 11k QM9 molecules with N_I=9 (i.e., 9 heavy atoms) are divided
into 11 parts. Each part contains 1k molecules and corresponds to triple files
of the following patter:

```bash
    (ID_amons.xyz, ID_targets.xyz, ID_map.h5)
```

where ID=01, 02, ..., 11.

Take the second part, i.e., 02 for example. The geometries and energies of the
associated 1k QM9 molecules are stored in `02_targets.xyz` and the amons of
these 1k targets are condensed into a single file `02_amons.xyz`. A mapping file
named `map.h5` is provided to look up amons for each target QM9 molecule in
`02_targets.xyz`

More specifically, to look up amons of the 9-th molecule (#9) in file `02_targets.xyz`,
one has to do the following (using the deepdish package, which may be installed by
typing `pip install deepdish` in the command line):

```bash
  >> import deepdish as dd
  >> dt = dd.io.load('02/map.h5')
  >> maps = dt['idxs']
  >> idxs = np.arange(maps.shape[1])
  >> idx = idxs[maps[8]] ## each entry of maps[8] is either 1 or 0, with 1 meaning
                         ## a valid amon of the target, 0 otherwise
```

The integer array `idx` is the desired amon indices of target #9 in file `02_target.xyz`.
Then one can read out relevant geometries/properties from file `02_amons.xyz`.


** Note **
- The computational method used for all geometries and energies is G09/B3LYP/6-31G(D).

