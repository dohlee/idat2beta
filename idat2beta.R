suppressPackageStartupMessages(library(argparse))
suppressPackageStartupMessages(library(minfi))

parser = ArgumentParser()
parser$add_argument('-i', '--input-dir', required=TRUE)
parser$add_argument('-o', '--output', required=TRUE)
args = parser$parse_args()

rg_set = read.metharray.exp(args$input_dir)
processed_rg_set = preprocessSWAN(rg_set)
beta = getBeta(processed_rg_set)

beta = as.data.frame(cbind(ID_REF=rownames(beta), beta))
colnames(beta) = c('ID_REF', 'VALUE')

beta = beta[order(beta$ID_REF),]
write.csv(beta, args$output, quote=FALSE, row.names=FALSE)
