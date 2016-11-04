# CANTRIP: A database of within _can_opy light-driven _tr_a_i_t _p_lasticity 

Contacts:

Trevor Keenan (trevorkeenan@lbl.gov)	Climate and Environmental Science Division, Lawrence Berkeley National Lab., Berkeley, CA 94720, USA

Ülo Niinemets (ylo.niinemets@emu.ee)	Estonian University of Life Sciences, Kreutzwaldi 1, 51014 Tartu, Estonia; Estonian Academy of Sciences, Kohtu 6, 10130 Tallinn, Estonia


## About

The Canopy Trait Plasticity Database (CANTRIP) contains data on the light-driven plasticity of traits within plant canopies from all over the globe. 
These data represent over 200 species from around the world, gathered from previously published scientific studies, along with unpublished data associated with specific publications.   

We hope that by publishing this data, along with subsequent updates to the dataset, we can help improve understanding of within canopy changes in plant traits, and the implications for global trait variation.

The dataset, and methodology used to generate it, is described further in the publications:

Keenan, T.F., and Ü. Niinemets (2017) Global leaf trait estimates biased due to plasticity in the shade. *Nature Plants* **in press**

Niinemets, Ü., T. F. Keenan, and L. Hallik (2015) A worldwide analysis of within-canopy variations in leaf structural, chemical and physiological traits across plant functional types. *New Phytologist* **205**:973–993. [10.1111/nph.13096](http://doi.org/10.1111/nph.13096)

Niinemets, Ü. 2016. Leaf age dependent changes in within‑canopy variation in leaf functional traits: a meta ‑ analysis. *Journal of Plant Research* **129**:313–338. [10.1007/s10265-016-0815-2](http://doi.org/10.1007/s10265-016-0815-2)

Niinemets, Ü., and T. F. Keenan (2012). Measures of light in studies on light-driven plant plasticity in artificial environments. *Frontiers in Plant Science* **3**:156. [10.3389/fpls.2012.00156](http://doi.org/10.3389/fpls.2012.00156)

At time of publication, the CANTRIP database contained 831 within canopy gradients for over 200 different species, for leaf mass per area (LMA), net assimilation (A) and leaf nitrogen (N) on both a mass (m) and area (a) basis. 

## Using the CANTRIP database

The database is released under the [Creative Commons Zero](https://creativecommons.org/publicdomain/zero/1.0/) public domain waiver, and can therefore be reused without restriction. 
To recognise the work that has gone into building the database, we kindly ask that you cite the above articles and acknowledge the database through it's DOI. When using data from only one or a few of the individual studies, please cite the original articles if you prefer.


### Download compiled database

You can download a compiled version of the CANTRIP database from:

1. Releases we have posted on [github](https://github.com/trevorkeenan/traitPlasticity/releases).
2. The [traitPlasticity.data](https://github.com/traitecoevo/traitPlasticity.data) package for `R` (in development).

The database contains the following elements

- `data`: amalgamated dataset (table), with columns as defined in `dictionary`
- `dictionary`: See [config/variableDefinitions.csv](config/variableDefinitions.csv) for a table of variable definitions
- `references`: as both summary table and bibtex entries containing the primary source for each study
- `contacts`: See [config/contacts.csv](config/contacts.csv) table with contact information and affiliations
- `methods`: (in dev.) a table with columns as in data, but containing a code for the methods used to collect the data. See [config/methodsDefinitions.csv](config/methodsDefinitions.csv) for codes.
These elements are available at both of the above links as a series of CSV and text files.

To download an earlier or more recent version (where version numbers will follow the [semantic versioning](http://semver.org) guidelines. The traitPlasticity.data package caches everything so subsequent calls, even across sessions, are very fast. 
This should facilitate greater reproducibility by making it easy to depend on the version used for a particular analysis, and allowing different analyses to use different versions of the database. 

Further details about the different versions and changes between versions is available on the [github releases](https://github.com/trevorkeenan/traitPlasticity/releases) page and in the [CHANGELOG](CHANGELOG.md).

## Details about the data distribution system

We envisage that there will be periodic updates to the Trait Plasticity database as we add more data. These updates will correspond with changes to the version number of this resource, and each version of the database will be available on [github](https://github.com/trevorkeenan/traitPlasticity/releases) and via the [traitPlasticity.data](https://github.com/traitecoevo/traitPlasticity.data) package. If you use this resource for a published analysis, please note the version number in your publication.  This will allow anyone in the future to go back and find **exactly** the same version of the data that you used.


## Reproducing older versions of the database and the paper from Nature Plants

You can reproduce any version of the database by checking out the appropriate commit that generated, or using the links provided under the [releases tab](https://github.com/trevorkeenan/traitPlasticity/releases). For example, to reproduce v1.0.0 of the database, corresponding to the paper in Nature Plants:

```
git checkout v1.0.0
```

Then in R run
```
remake::make("export")
remake::make("manuscript")
```

## Acknowledgements

We are extremely grateful to all the researchers who published these data over the past decades. We thank Kaia Kask for assistance in data digitization and database management, and Anne Aan, Niels Anten, Ismael Aranda, Jan Cerm ak, Robin Chazdon, Theodore DeJong, Tim Fahey, Manfred Forstreuter, Yuko Hanba, Hiromitsu Kisanuki, Patrick Meir, Domingo Morales, Serge Rambal, Maria Soledad Jim enez Parrondo, Ingmar Tulva and Charlie Warren for providing details of the experimental design and/or unpublished data accompanying published datasets. We also thank Takayoshi Koike, Yukihiro Chiba and Ichiro Terashima for help with Japanese papers, and Susanne von Caemmerer for clarifications with regard to Rubisco kinetic characteristics. 

## Funding sources

T.F. Keenan was funded through a Laboratory Directed Research and Development (LDRD) fund under the auspices of DOE, BER Office of Science at Lawrence Berkeley National Laboratory. Additional funding from a Macquarie University Research Fellowship is also acknowledged. 

Ülo Niinemets acknowledges funding support for this study was provided by the Estonian Ministry of Science and Education (institutional grant IUT-8-3) and the European Commission through the European Regional Fund (Center of Excellence in Environmental Adaptation), the European Social Fund (postdoc- toral grant MJD122) and the European Research Council (advanced grant 322603, SIP-VOL+).

