## Needed for Rscript
library("methods")

knitr::opts_chunk$set(
  comment = "#>",
  echo = TRUE,
  collapse = TRUE,
  cache = TRUE,
  fig.align="center",
  fig.pos="t",
  out.width = "60%",
  fig.width = 6,
  fig.asp = 0.618  # 1 / phi
)
set.seed(2016)
options(digits = 3)
options(dplyr.print_min = 4, dplyr.print_max = 4)

load("data/Beauty.RData")
cupid = readRDS("data/okcupid.rds")
load("data/bond.RData")
