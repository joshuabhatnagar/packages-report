## remember to restart R here!
library(tidyverse)
library(here)

## create a data frame by reading from data/installed-packages.csv
myInstalledPackages <- read_csv(here::here("data", "installed-packages.csv"))

## filter out the base and recommended packages
## keep the variables Package and Built
myAddOnPackages <- myInstalledPackages %>%
  filter(is.na(Priority)) %>%
  select(Package, Built)

## write this new, smaller data frame to data/add-on-packages.csv
write_csv(myAddOnPackages, here::here("data", "add-on-packages.csv"))

## make a frequency table of package by the version in Built
myAddOnPackages_freqtable <- myAddOnPackages %>%
  count(Built) %>%
  mutate(prop = n / sum(n))

## write this data frame to data/add-on-packages-freqtable.csv
write_csv(myAddOnPackages_freqtable, here::here("data", "add-on-packages-freqtable.csv"))