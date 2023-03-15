#!/usr/bin/env Rscript
args <- commandArgs(trailingOnly = TRUE)

data <- readxl::read_xlsx(args[1])
dict <- readxl::read_xlsx(args[2])

vars <- dict$variable_name[tolower(dict$indirect_identifier) %in% c("yes", "y")]

datadict::k_anonymity(data, vars)
