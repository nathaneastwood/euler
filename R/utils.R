#' Find all factors of a number
#'
#' @param x Value to find factors of
#' @return List of vectors of factor pairs
#' @examples
#' euler:::find_factors(1000)
find_factors <- function(x){

  factors <- list()

  for (i in 1:sqrt(x)) {
    if (x %% i == 0) {
      factors[[length(factors) + 1]] <- c(i, x / i)
    }
  }

  factors

}

#' Work out if a number is a prime number
#'
#' @param n An integer.
is_prime <- function(n){
  n == 2L || all(n %% 2L:max(2, floor(sqrt(n))) != 0)
}

#' Find triangle numbers
#'
#' @param x How many triangle numbers to find
#' @examples
#' euler:::triangle(10)
triangle <- function(x){

  vals <- seq(from = 1, to = x)
  cumsum(vals)

}

#' Count all factors of a number
#'
#' @param x Value to count factors of
#' @examples
#' euler:::count_factors(1000)
count_factors <- function(x){

  factors = unlist(find_factors(x))
  length(unique(factors))

}

