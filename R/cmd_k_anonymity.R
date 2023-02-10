#!/usr/bin/env Rscript
args <- commandArgs(trailingOnly = TRUE)

data <- readxl::read_xlsx(args[1])
vars <- strsplit(args[2], ",")[[1]]

datadict::k_anonymity(data, vars)
