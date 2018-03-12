#' Project Euler 3: Largest prime factor
#'
#' This is a solution to
#' \href{https://projecteuler.net/problem=3}{Euler problem 3}.
#'
#' @param x A number of interest to find the largest prime factor of.
#'
#' @examples
#' euler_3(600851475143)
#'
#' @export
euler_3 <- function(x) {
  factors <- find_factors(x)

  prime_factors <- NULL

  for (i in seq_along(factors)) {
    if (is_prime(factors[[i]][1])) {
      prime_factors <- c(prime_factors, factors[[i]][1])
    }

    if (is_prime(factors[[i]][2])) {
      prime_factors <- c(prime_factors, factors[[i]][2])
    }
  }

  max(prime_factors)
}
