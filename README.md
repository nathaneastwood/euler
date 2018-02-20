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
11](https://projecteuler.net/problem=11) using the following:

``` r
data_11
      [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10] [,11] [,12] [,13]
 [1,]    8    2   22   97   38   15    0   40    0    75     4     5     7
 [2,]   49   49   99   40   17   81   18   57   60    87    17    40    98
 [3,]   81   49   31   73   55   79   14   29   93    71    40    67    53
 [4,]   52   70   95   23    4   60   11   42   69    24    68    56     1
 [5,]   22   31   16   71   51   67   63   89   41    92    36    54    22
 [6,]   24   47   32   60   99    3   45    2   44    75    33    53    78
 [7,]   32   98   81   28   64   23   67   10   26    38    40    67    59
 [8,]   67   26   20   68    2   62   12   20   95    63    94    39    63
 [9,]   24   55   58    5   66   73   99   26   97    17    78    78    96
[10,]   21   36   23    9   75    0   76   44   20    45    35    14     0
[11,]   78   17   53   28   22   75   31   67   15    94     3    80     4
[12,]   16   39    5   42   96   35   31   47   55    58    88    24     0
[13,]   86   56    0   48   35   71   89    7    5    44    44    37    44
[14,]   19   80   81   68    5   94   47   69   28    73    92    13    86
[15,]    4   52    8   83   97   35   99   16    7    97    57    32    16
[16,]   88   36   68   87   57   62   20   72    3    46    33    67    46
[17,]    4   42   16   73   38   25   39   11   24    94    72    18     8
[18,]   20   69   36   41   72   30   23   88   34    62    99    69    82
[19,]   20   73   35   29   78   31   90    1   74    31    49    71    48
[20,]    1   70   54   71   83   51   54   69   16    92    33    48    61
      [,14] [,15] [,16] [,17] [,18] [,19] [,20]
 [1,]    78    52    12    50    77    91     8
 [2,]    43    69    48     4    56    62     0
 [3,]    88    30     3    49    13    36    65
 [4,]    32    56    71    37     2    36    91
 [5,]    40    40    28    66    33    13    80
 [6,]    36    84    20    35    17    12    50
 [7,]    54    70    66    18    38    64    70
 [8,]     8    40    91    66    49    94    21
 [9,]    83    14    88    34    89    63    72
[10,]    61    33    97    34    31    33    95
[11,]    62    16    14     9    53    56    92
[12,]    17    54    24    36    29    85    57
[13,]    60    21    58    51    54    17    58
[14,]    52    17    77     4    89    55    40
[15,]    26    26    79    33    27    98    66
[16,]    55    12    32    63    93    53    69
[17,]    46    29    32    40    62    76    36
[18,]    67    59    85    74     4    36    16
[19,]    86    81    16    23    57     5    54
[20,]    43    52     1    89    19    67    48
euler_11(data_11)
[1] 70600674
```
