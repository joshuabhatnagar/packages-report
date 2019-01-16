library(tidyverse)
library(here)

## create a data frame of your installed packages
myInstalledPackages <- installed.packages() %>%
  as_tibble()

## write this data frame to data/installed-packages.csv
write_csv(myInstalledPackages, path = here::here("data", "installed-packages.csv"))
