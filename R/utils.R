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

#' Generate Pythagorean triples using Euclid's formula
#'
#' @details
#' From the fact that for positive integers m and n, m > n, the a, b, and c
#' given by the formula are all positive integers
#'
#' @param m,n Positive integers where m > n > 0
#' @param k A multiplier
#'
#' @return A list containing a, b, and c
#'
#' @source
#' \url{https://en.wikipedia.org/wiki/Pythagorean_triple#Generating_a_triple}
#'
#' @examples
#' euler:::euclid(2, 1)
euclid <- function (m, n, k = 1) {
  if (m <= 0 | n <= 0) {
    stop("m and n must be > 0")
  }
  if (m <= n) {
    stop("m must be greater than n")
  }
  list(
    a = k * (m ^ 2 - n ^ 2),
    b = k * (2 * m * n),
    c = k * (m ^ 2 + n ^ 2)
  )
}
