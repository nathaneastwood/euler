<!-- README.md is generated from README.Rmd. Please edit that file -->
euler
=====

Overview
--------

The goal of euler is to offer R solutions to [Project
Euler](https://projecteuler.net) problems.

Installation
------------

You can install the package directly from GitHub using the [devtools
package](https://github.com/r-lib/devtools).

``` r
# install.packages("devtools")
install_github("nathaneastwood/euler")
```

Useage
------

We can, for example, solve [Euler problem
67](https://projecteuler.net/problem=67) using the following:

         [,1] [,2] [,3] [,4] [,5] [,6] ...
    [1,]   58    0    0    0    0    0 ...
    [2,]   73   41    0    0    0    0 ...
    [3,]   52   40    9    0    0    0 ...
    [4,]   26   53    6   34    0    0 ...
    [5,]   10   51   87   86   81    0 ...
    [6,]   61   95   66   57   25   68 ...
      ⋮     ⋮    ⋮     ⋮    ⋮     ⋮    ⋮

``` r
euler67(triangle)
#> [1] 7272
```
