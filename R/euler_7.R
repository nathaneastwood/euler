#' Project Euler 7: 10001st prime
#'
#' This is a solution to
#' \href{https://projecteuler.net/problem=7}{Euler problem 7}.
#'
#' @param n An integer.
#'
#' @examples
#' euler_7(6)
#' euler_7(10001)
#'
#' @export
euler_7 <- function(n) {
  x <- 2
  primes <- NA
  while ((length(primes) - 1) < n) {
    if (is_prime(x)) {
      primes <- c(primes, x)
      x <- x + 1
    } else {
      x <- x + 1
    }
  }
  primes[length(primes)]
}
