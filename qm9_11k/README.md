
The overall 11k molecules with 9 heavy atoms randomly drawn from QM9  are divided
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

More specifically, to look up amons of the 1st molecule in file `02_targets.xyz`,
one has to do the following (using the `deepdish` package, which may be installed by
`pip install deepdish`):

```bash
import deepdish as dd
import numoy as np

dt = dd.io.load('02_map.h5')
m = dt['idxs']
i = np.arange(m.shape[1])
idx = idxs[m[0]==1] ## each entry of maps[8] is either 1 or 0, with 1 meaning
                         ## a valid amon of the target, 0 otherwise
```

Below, we offer a more detailed explanation:

```bash
In [1]: import deepdish as dd
   ...: dt = dd.io.load('02_map.h5')

In [2]: m = dt['idxs']

In [4]: m.shape
Out[4]: (1000, 18898)

In [7]: i = np.arange(m.shape[1])

In [8]: m1 = m[0]

In [9]: (m1>0).sum()
Out[9]: 35               ## This means that there are 35 amons for the first mol in 02_target.xyz

In [10]: idx = i[m1>0]

In [11]: idx        ## the mol idxs of the 35 amons in file 02_amons.xyz, starting from 0
Out[11]:
array([    0,     3,     6,     7,    26,    29,    32,    33,    66,
         150,   152,   153,   215,   361,   378,   379,   913,   917,
         918,  1006,  1081,  1083,  1479,  2555,  2616,  4074,  4461,
        4486,  4488,  6641,  6731, 11953, 12283, 12330, 18893])
```


The integer array `idx` is the desired amon indices of the first molecule in file `02_target.xyz`.
Then one can read out relevant geometries/properties from file `02_amons.xyz` and proceed to QML.


**Note**
- The computational method used for all geometries and energies is G09/B3LYP/6-31G(D).

