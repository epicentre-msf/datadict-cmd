#!/usr/bin/env Rscript
args <- commandArgs(trailingOnly = TRUE)

data <- readxl::read_xlsx(args[1])
dict <- readxl::read_xlsx(args[2])
format_coded <- ifelse(is.na(args[3]), "label", args[3])
verbose <- ifelse(is.na(args[4]), TRUE, args[4])

datadict::valid_data(data, dict, format_code = format_coded, verbose = verbose)
