#!/usr/bin/env Rscript
args = commandArgs(trailingOnly=TRUE)
print(args[1])
quit(status = as.numeric(args[1]), save = "no")
