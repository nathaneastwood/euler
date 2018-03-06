#' Project Euler 10: Summation of primes
#'
#' This is a solution to
#' \href{https://projecteuler.net/problem=10}{Euler problem 10}.
#'
#' @param n An integer.
#'
#' @examples
#' euler_10(10)
#' euler_10(2e6)
#'
#' @export
euler_10 <- function(n) {
  primes <- esieve(n)
  sum(as.numeric(primes))
}
