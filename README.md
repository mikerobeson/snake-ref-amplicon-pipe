# Snakemake amplicon pipelines

This repository is currently at the **DRAFT stage**!

This repository is for aiding in the generation of several commonly used amplicon marker genes, *e.g.* SSU rRNA, etc. For the moment this repository contains pipelines for:

- SILVA
- GTDB
- RDP

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

Then, simply go to the folder for the database of your choice (*e.g.* SILVA) and smiply use the commands below to,

**Dry Run**

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

