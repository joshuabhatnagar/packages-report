
## Overview

The goal of packages-report is to summarize my R package installations.

I have 225 add-on packages installed.

Here’s how they break down in terms of which version of R they were
built under, which is related to how recently they were updated on CRAN.

| Built |   n |      prop |
| :---- | --: | --------: |
| 3.5.0 |  26 | 0.1155556 |
| 3.5.1 | 159 | 0.7066667 |
| 3.5.2 |  40 | 0.1777778 |

![](figs/built-barchart.png)

### Flow of the analysis

There are four scripts saved within the subdirectory `scripts` used to
conduct the analysis:

1.  The first script, `01_write-installed-packages.R`, creates a
    dataframe of my currently installed packages.
2.  The second script, `02_wrangle-packages.R`, creates two files, one
    containing all of my add-on packages and another containing the
    break down in terms of which version of R the add-on packages were
    built under.
3.  The third script, `03_barchart-packages-built.R`, creates a plot of
    the frequency table created in the second script.

To run the analysis in one easy step, the fourth script,
`04_whole-analysis.R`, creates the necessary subdirectories if they
don’t exist and sources the first three scripts.

<details>

<summary>Session info</summary>

``` r
devtools::session_info()
#> - Session info ----------------------------------------------------------
#>  setting  value                       
#>  version  R version 3.5.1 (2018-07-02)
#>  os       Windows 10 x64              
#>  system   x86_64, mingw32             
#>  ui       RTerm                       
#>  language (EN)                        
#>  collate  English_United States.1252  
#>  ctype    English_United States.1252  
#>  tz       America/Los_Angeles         
#>  date     2019-01-15                  
#> 
#> - Packages --------------------------------------------------------------
#>  package     * version date       lib source        
#>  assertthat    0.2.0   2017-04-11 [1] CRAN (R 3.5.1)
#>  backports     1.1.3   2018-12-14 [1] CRAN (R 3.5.2)
#>  bindr         0.1.1   2018-03-13 [1] CRAN (R 3.5.1)
#>  bindrcpp      0.2.2   2018-03-29 [1] CRAN (R 3.5.1)
#>  broom         0.5.1   2018-12-05 [1] CRAN (R 3.5.2)
#>  callr         3.1.1   2018-12-21 [1] CRAN (R 3.5.2)
#>  cellranger    1.1.0   2016-07-27 [1] CRAN (R 3.5.1)
#>  cli           1.0.1   2018-09-25 [1] CRAN (R 3.5.1)
#>  colorspace    1.4-0   2019-01-13 [1] CRAN (R 3.5.1)
#>  crayon        1.3.4   2017-09-16 [1] CRAN (R 3.5.1)
#>  desc          1.2.0   2018-05-01 [1] CRAN (R 3.5.1)
#>  devtools      2.0.1   2018-10-26 [1] CRAN (R 3.5.1)
#>  digest        0.6.18  2018-10-10 [1] CRAN (R 3.5.1)
#>  dplyr       * 0.7.8   2018-11-10 [1] CRAN (R 3.5.1)
#>  evaluate      0.12    2018-10-09 [1] CRAN (R 3.5.1)
#>  forcats     * 0.3.0   2018-02-19 [1] CRAN (R 3.5.1)
#>  fs            1.2.6   2018-08-23 [1] CRAN (R 3.5.2)
#>  generics      0.0.2   2018-11-29 [1] CRAN (R 3.5.2)
#>  ggplot2     * 3.1.0   2018-10-25 [1] CRAN (R 3.5.1)
#>  glue          1.3.0   2018-07-17 [1] CRAN (R 3.5.1)
#>  gtable        0.2.0   2016-02-26 [1] CRAN (R 3.5.1)
#>  haven         2.0.0   2018-11-22 [1] CRAN (R 3.5.1)
#>  here        * 0.1     2017-05-28 [1] CRAN (R 3.5.2)
#>  highr         0.7     2018-06-09 [1] CRAN (R 3.5.1)
#>  hms           0.4.2   2018-03-10 [1] CRAN (R 3.5.1)
#>  htmltools     0.3.6   2017-04-28 [1] CRAN (R 3.5.1)
#>  httr          1.4.0   2018-12-11 [1] CRAN (R 3.5.2)
#>  jsonlite      1.6     2018-12-07 [1] CRAN (R 3.5.2)
#>  knitr         1.21    2018-12-10 [1] CRAN (R 3.5.2)
#>  lattice       0.20-38 2018-11-04 [1] CRAN (R 3.5.1)
#>  lazyeval      0.2.1   2017-10-29 [1] CRAN (R 3.5.1)
#>  lubridate     1.7.4   2018-04-11 [1] CRAN (R 3.5.1)
#>  magrittr      1.5     2014-11-22 [1] CRAN (R 3.5.1)
#>  memoise       1.1.0   2017-04-21 [1] CRAN (R 3.5.1)
#>  modelr        0.1.2   2018-05-11 [1] CRAN (R 3.5.1)
#>  munsell       0.5.0   2018-06-12 [1] CRAN (R 3.5.1)
#>  nlme          3.1-137 2018-04-07 [1] CRAN (R 3.5.1)
#>  pillar        1.3.1   2018-12-15 [1] CRAN (R 3.5.2)
#>  pkgbuild      1.0.2   2018-10-16 [1] CRAN (R 3.5.1)
#>  pkgconfig     2.0.2   2018-08-16 [1] CRAN (R 3.5.1)
#>  pkgload       1.0.2   2018-10-29 [1] CRAN (R 3.5.1)
#>  plyr          1.8.4   2016-06-08 [1] CRAN (R 3.5.1)
#>  prettyunits   1.0.2   2015-07-13 [1] CRAN (R 3.5.1)
#>  processx      3.2.1   2018-12-05 [1] CRAN (R 3.5.2)
#>  ps            1.3.0   2018-12-21 [1] CRAN (R 3.5.2)
#>  purrr       * 0.2.5   2018-05-29 [1] CRAN (R 3.5.1)
#>  R6            2.3.0   2018-10-04 [1] CRAN (R 3.5.1)
#>  Rcpp          1.0.0   2018-11-07 [1] CRAN (R 3.5.1)
#>  readr       * 1.3.1   2018-12-21 [1] CRAN (R 3.5.2)
#>  readxl        1.2.0   2018-12-19 [1] CRAN (R 3.5.2)
#>  remotes       2.0.2   2018-10-30 [1] CRAN (R 3.5.1)
#>  rlang         0.3.1   2019-01-08 [1] CRAN (R 3.5.2)
#>  rmarkdown     1.11    2018-12-08 [1] CRAN (R 3.5.2)
#>  rprojroot     1.3-2   2018-01-03 [1] CRAN (R 3.5.1)
#>  rstudioapi    0.9.0   2019-01-09 [1] CRAN (R 3.5.2)
#>  rvest         0.3.2   2016-06-17 [1] CRAN (R 3.5.1)
#>  scales        1.0.0   2018-08-09 [1] CRAN (R 3.5.1)
#>  sessioninfo   1.1.1   2018-11-05 [1] CRAN (R 3.5.1)
#>  stringi       1.2.4   2018-07-20 [1] CRAN (R 3.5.1)
#>  stringr     * 1.3.1   2018-05-10 [1] CRAN (R 3.5.1)
#>  tibble      * 2.0.1   2019-01-12 [1] CRAN (R 3.5.2)
#>  tidyr       * 0.8.2   2018-10-28 [1] CRAN (R 3.5.1)
#>  tidyselect    0.2.5   2018-10-11 [1] CRAN (R 3.5.1)
#>  tidyverse   * 1.2.1   2017-11-14 [1] CRAN (R 3.5.2)
#>  usethis       1.4.0   2018-08-14 [1] CRAN (R 3.5.2)
#>  withr         2.1.2   2018-03-15 [1] CRAN (R 3.5.1)
#>  xfun          0.4     2018-10-23 [1] CRAN (R 3.5.1)
#>  xml2          1.2.0   2018-01-24 [1] CRAN (R 3.5.1)
#>  yaml          2.2.0   2018-07-25 [1] CRAN (R 3.5.1)
#> 
#> [1] C:/R/R-3.5.1/library
```

</details>
