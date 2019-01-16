## remember to restart R here!
library(tidyverse)
library(here)

## read that csv into a data frame
myAddOnPackages_freqtable <- read_csv(here::here("data", "add-on-packages-freqtable.csv"))

## make a barchart from the frequency table in data/add-on-packages-freqtable.csv
ggplot(myAddOnPackages_freqtable, aes(x = Built, y = n)) +
  geom_col()

## write this barchart to figs/built-barchart.png
ggsave(here::here("figs", "built-barchart.png"))
