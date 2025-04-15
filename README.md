# Snakemake amplicon pipelines

This repository is for aiding in the generation of several commonly used amplicon marker genes, *e.g.* SSU rRNA, etc. For the moment this repository contains pipelines for:

- SILVA
- GTDB
- RDP

*Note: a Nextflow variant of this pipeline is available [here](https://github.com/mikerobeson/nf-refdb-amplicon).*

Each pipeline is currently setup to run intependently, and generate the following classifiers:

- Full-length
- V1V3
- V3V4
- V4
- V4V5
- v6V8
- V7V9

To run a given pipeline, install [snakemake](https://snakemake.readthedocs.io/), activate the environment, then install [graphviz](https://anaconda.org/anaconda/graphviz) to be able to visualize a DAG (directed acyclic graph):

```
conda create -c conda-forge -c bioconda -n snakemake snakemake

conda activate snakemake

conda install -c conda-forge graphviz
```

Then, simply go to the folder for the database of your choice (*e.g.* SILVA) and smiply use the commands below.

**Go to workflow directory**

```
cd Pipelines/SILVA/workflow
```

**Generate DAG**

```
snakemake --snakefile Snakefile --dag all | dot -Tpng > silva-dag.png
```

**Run pipeline**
You can add the flag `-n` to performa a "dry run". That is, just provide a description of what will be run. Add the flag `-F` to force rerun and regenrate output.

```
snakemake -c 8 --use-conda  all -p
```

## Cite
If you make use of this pipeline please cite RESCRIPt:

- Michael S Robeson II, Devon R O'Rourke, Benjamin D Kaehler, Michal Ziemski, Matthew R Dillon, Jeffrey T Foster, Nicholas A Bokulich. (2021) RESCRIPt: Reproducible sequence taxonomy reference database management. PLoS Computational Biology 17 (11): e1009581. doi: [10.1371/journal.pcbi.1009581](http://dx.doi.org/10.1371/journal.pcbi.1009581). [GitHub](https://github.com/bokulich-lab/RESCRIPt). 

Please be sure to cite the following as well:

- **If using the SILVA data** : Versions are released under different licenses. Refer to the [current SILVA release license information](https://www.arb-silva.de/silva-license-information/) for more details. [How to cite SILVA](https://www.arb-silva.de/contact/).
- **If using GTDB data** : See the [GTDB "about" page](https://gtdb.ecogenomic.org/about) for more details. [How to cite GTDB](https://gtdb.ecogenomic.org/about).
- **If using RDP data** : See the [main RDP GitHub page](https://github.com/rdpstaff) and the [RDP sourceforge page](https://sourceforge.net/projects/rdp-classifier/files/RDP_Classifier_TrainingData/) for more details. Please cite the following RDP aritcles: [Wang *et al*. 2007](http://dx.doi.org/10.1128/AEM.00062-07) & [Wang *et al*. 2024](https://doi.org/10.1128/mra.01063-23).
