
<!-- README.md is generated from README.Rmd. Please edit that file -->

# runiv

<!-- badges: start -->

[![CRAN
status](https://www.r-pkg.org/badges/version/runiv)](https://CRAN.R-project.org/package=runiv)
[![R-CMD-check](https://github.com/vgherard/runiv/workflows/R-CMD-check/badge.svg)](https://github.com/vgherard/runiv/actions)
[![Codecov test
coverage](https://codecov.io/gh/vgherard/runiv/branch/master/graph/badge.svg)](https://codecov.io/gh/vgherard/runiv?branch=master)
<!-- badges: end -->

`{runiv}` provides a client for R-universe APIs associated to
R-universes. From the [R-universe project
page](https://ropensci.org/r-universe/):

> The package server provides REST APIs for managing package submissions
> and querying information about individual packages as well as on the
> repository level. These data can be accessed programmatically or
> displayed in a front-end dashboard.

## Installation

You can install the development version of `runiv` using

``` r
# install.packages("devtools")
devtools::install_github("vgherard/runiv")
```

## Example

``` r
df <- runiv::runiv_stats_descriptions("vgherard")
df[, c("Package", "Title", "Version")]
#>    Package                                             Title    Version
#> 1    runiv                        Client for R-universe APIs 0.0.0.9000
#> 2      r2r                    R-Object to R-Object Hash Maps      0.1.1
#> 3   kgrams                  Classical k-gram Language Models      0.1.0
#> 4 scribblr                          A Notepad Inside RStudio 0.2.0.9000
#> 5  gsample   Efficient Weighted Sampling Without Replacement      0.1.0
#> 6      sbo Text Prediction via Stupid Back-Off N-Gram Models      0.5.0
#> 7     fcci              Feldman-Cousins Confidence Intervals      1.0.0
```
