
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Composition Aware Differential Expression Analyses

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![CRAN
status](https://www.r-pkg.org/badges/version/cadea)](https://CRAN.R-project.org/package=cadea)
<!-- badges: end -->

This package is the accompanying software for the method described in
TBA.

In this method, we perform differential expression analyses for genes
under the assumption that tissue composition influences gene expression.
This amounts to representing the read count for gene
![i](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;i "i")
in sample
![j](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;j "j")
as
![Y\_{ij} = \sum\_{k = 1}^K Y\_{ijk}](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;Y_%7Bij%7D%20%3D%20%5Csum_%7Bk%20%3D%201%7D%5EK%20Y_%7Bijk%7D "Y_{ij} = \sum_{k = 1}^K Y_{ijk}"),
where
![Y\_{ijk}](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;Y_%7Bijk%7D "Y_{ijk}")
is the read count of gene
![i](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;i "i")
in sample
![j](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;j "j")
contributed by celltype
![k](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;k "k").
We typically assume that the read count
![Y\_{ij}](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;Y_%7Bij%7D "Y_{ij}")
described above to be a negative binomial, where the mean variance
relationship is parametrized as
![\sigma\_{ij}^2 = \mu\_{ij} + \delta\_{ij}\mu\_{ij}^2](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;%5Csigma_%7Bij%7D%5E2%20%3D%20%5Cmu_%7Bij%7D%20%2B%20%5Cdelta_%7Bij%7D%5Cmu_%7Bij%7D%5E2 "\sigma_{ij}^2 = \mu_{ij} + \delta_{ij}\mu_{ij}^2").
We similarly assume that
![Y\_{ijk} \sim NB(\nu\_{ijk}, \tau\_{ijk})](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;Y_%7Bijk%7D%20%5Csim%20NB%28%5Cnu_%7Bijk%7D%2C%20%5Ctau_%7Bijk%7D%29 "Y_{ijk} \sim NB(\nu_{ijk}, \tau_{ijk})"),
implying that
![Y\_{ij} = \sum\_{k = 1}^K Y\_{ijk}](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;Y_%7Bij%7D%20%3D%20%5Csum_%7Bk%20%3D%201%7D%5EK%20Y_%7Bijk%7D "Y_{ij} = \sum_{k = 1}^K Y_{ijk}")
is rather distributed according to the convolution of the cell type
distributions. Such distributions have been derived by Edward Furman in
his paper

## Installation

You can install the development version of cadea from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
# devtools::install_github("zachbrehm/cadea")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
#  library(cadea)
## basic example code
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
#summary(cars)
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this. You could also
use GitHub Actions to re-render `README.Rmd` every time you push. An
example workflow can be found here:
<https://github.com/r-lib/actions/tree/v1/examples>.

You can also embed plots, for example:

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.
