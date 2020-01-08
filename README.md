# idat2beta

## Requirements

Create conda environment and activate it.
```
conda env create -f environment.yaml

conda activate minfi
```

## Quickstart
```
Rscript idat2beta.R -i data/GSM1234567 -o GSM1234567_beta.csv
```

`data/GSM1234567` should contain two IDAT files representing two-channel output (`*_Grn.idat` and `*_Red.idat`).


