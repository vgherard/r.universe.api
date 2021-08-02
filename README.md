
<!-- README.md is generated from README.Rmd. Please edit that file -->

# runi

<!-- badges: start -->

[![Project Status: Active – The project has reached a stable, usable
state and is being actively
developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![R-CMD-check](https://github.com/vgherard/runi/workflows/R-CMD-check/badge.svg)](https://github.com/vgherard/runi/actions)
[![Codecov test
coverage](https://codecov.io/gh/vgherard/runi/branch/master/graph/badge.svg)](https://codecov.io/gh/vgherard/runi?branch=master)
[![CRAN
status](https://www.r-pkg.org/badges/version/runi)](https://CRAN.R-project.org/package=runi)
[![R-universe
status](https://vgherard.r-universe.dev/badges/runi)](https://vgherard.r-universe.dev/)
[![Website](https://img.shields.io/badge/Website-here-blue)](https://vgherard.github.io/runi)
<!-- badges: end -->

`{runi}` provides a client for R-universe APIs associated to
R-universes. From the [R-universe project
page](https://ropensci.org/r-universe/):

> The package server provides REST APIs for managing package submissions
> and querying information about individual packages as well as on the
> repository level. These data can be accessed programmatically or
> displayed in a front-end dashboard.

## Installation

You can install the development version of `runi` using

``` r
# install.packages("devtools")
devtools::install_github("vgherard/runi")
```

## Example

``` r
df <- runi::runi_stats_descriptions("vgherard")
df[, c("Package", "Title", "Version")]
#> # A tibble: 7 x 3
#>   Package  Title                                             Version   
#>   <chr>    <chr>                                             <chr>     
#> 1 runi     Client for R-universe APIs                        0.0.0.9000
#> 2 r2r      R-Object to R-Object Hash Maps                    0.1.1     
#> 3 kgrams   Classical k-gram Language Models                  0.1.1.9000
#> 4 scribblr A Notepad Inside RStudio                          0.2.0.9000
#> 5 gsample  Efficient Weighted Sampling Without Replacement   0.1.0     
#> 6 sbo      Text Prediction via Stupid Back-Off N-Gram Models 0.5.0     
#> 7 fcci     Feldman-Cousins Confidence Intervals              1.0.0
```
