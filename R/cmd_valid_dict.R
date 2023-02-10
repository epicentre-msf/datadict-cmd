#!/usr/bin/env Rscript
args <- commandArgs(trailingOnly = TRUE)

dict <- readxl::read_xlsx(args[1])
verbose <- ifelse(is.na(args[2]), TRUE, args[2])

datadict::valid_dict(dict, verbose = verbose)
