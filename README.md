<!-- README.md is generated from README.Rmd. Please edit that file -->
euler
=====

[![Project Status: Active - The project has reached a stable, usable
state and is being actively
developed.](http://www.repostatus.org/badges/latest/active.svg)](http://www.repostatus.org/#active)
[![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/euler)](http://cran.r-project.org/package=euler)
[![Travis-CI Build
Status](https://travis-ci.org/nathaneastwood/euler.svg?branch=master)](https://travis-ci.org/nathaneastwood/euler)
[![codecov](https://codecov.io/gh/nathaneastwood/euler/branch/master/graph/badge.svg)](https://codecov.io/gh/nathaneastwood/euler)
[![License:
MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Overview
--------

The goal of `euler` is to offer R solutions to [Project
Euler](https://projecteuler.net) problems.

Installation
------------

You can install the package directly from GitHub using the [`devtools`
package](https://github.com/r-lib/devtools).

``` r
# install.packages("devtools")
install_github("nathaneastwood/euler")
```

Useage
------

We can, for example, solve [Euler problem
3](https://projecteuler.net/problem=3) using the following:

``` r
euler_3(600851475143)
[1] 6857
```

Or we could solve [Euler problem 4](https://projecteuler.net/problem=4)
using the following:

``` r
euler_4(3)
[1] 906609
```

Problems solved so far
----------------------

This package currently offers solutions to the following Euler problems:

<details>
<summary>Click to expand</summary>

-   [Problem 1](https://projecteuler.net/problem=1)
-   [Problem 2](https://projecteuler.net/problem=2)
-   [Problem 3](https://projecteuler.net/problem=3)
-   [Problem 4](https://projecteuler.net/problem=4)
-   [Problem 5](https://projecteuler.net/problem=5)
-   [Problem 6](https://projecteuler.net/problem=6)
-   [Problem 7](https://projecteuler.net/problem=7)
-   [Problem 8](https://projecteuler.net/problem=8)
-   [Problem 11](https://projecteuler.net/problem=11)
-   [Problem 13](https://projecteuler.net/problem=13)
-   [Problem 18](https://projecteuler.net/problem=18)
-   [Problem 67](https://projecteuler.net/problem=67)

</details>
Contributing
------------

Bug reports, suggestions, and especially code contributions are welcome.
Please see
[CONTRIBUTING.md](https://github.com/nathaneastwood/euler/blob/master/CONTRIBUTING.md).
Maintainers and contributors must follow this repository’s [code of
conduct](https://thoughtbot.com/open-source-code-of-conduct).
