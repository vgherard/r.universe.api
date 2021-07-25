
<!-- README.md is generated from README.Rmd. Please edit that file -->

# r.universe.api

<!-- badges: start -->

[![CRAN
status](https://www.r-pkg.org/badges/version/r.universe.api)](https://CRAN.R-project.org/package=r.universe.api)
[![R-CMD-check](https://github.com/vgherard/r.universe.api/workflows/R-CMD-check/badge.svg)](https://github.com/vgherard/r.universe.api/actions)
[![Codecov test
coverage](https://codecov.io/gh/vgherard/r.universe.api/branch/master/graph/badge.svg)](https://codecov.io/gh/vgherard/r.universe.api?branch=master)
<!-- badges: end -->

`{r.universe.api}` provides a client for R-universe APIs associated to
R-universes. From the [R-universe project
page](https://ropensci.org/r-universe/):

> The package server provides REST APIs for managing package submissions
> and querying information about individual packages as well as on the
> repository level. These data can be accessed programmatically or
> displayed in a front-end dashboard.

## Installation

You can install the released version of r.universe.api from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("r.universe.api")
```

## Example

``` r
df <- r.universe.api::runiv_descriptions("vgherard")
df[, c("Package", "Title", "Version")]
#>    Package                                             Title    Version
#> 1      r2r                    R-Object to R-Object Hash Maps 0.1.1.9000
#> 2   kgrams                  Classical k-gram Language Models      0.1.0
#> 3 scribblr                          A Notepad Inside RStudio 0.2.0.9000
#> 4  gsample   Efficient Weighted Sampling Without Replacement      0.1.0
#> 5      sbo Text Prediction via Stupid Back-Off N-Gram Models      0.5.0
#> 6     fcci              Feldman-Cousins Confidence Intervals      1.0.0
```
