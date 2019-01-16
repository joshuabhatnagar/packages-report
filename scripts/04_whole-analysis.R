library(tidyverse)
library(here)

if(!dir.exists(here("data"))) {
  dir.create(here("data"))
}

if(!dir.exists(here("scripts"))) {
  dir.create(here("scripts"))
}

if(!dir.exists(here("figs"))) {
  dir.create(here("figs"))
}


source(here("scripts", "01_write-installed-packages.R"))
source(here("scripts", "02_wrangle-packages.R"))
source(here("scripts", "03_barchart-packages-built.R"))