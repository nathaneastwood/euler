#' Project Euler 8: Largest product in a series
#'
#' This is a solution to
#' \href{https://projecteuler.net/problem=8}{Euler problem 8}.
#'
#' @param data A vector of integers.
#' @param n An integer. The number of adjacent integers.
#'
#' @examples
#' euler_8(data_8, 4)
#' euler_8(data_8, 13)
#'
#' @export
euler_8 <- function(data, n) {
  prods <- rep(NA, length(data) %/% n)
  for (i in 1:(length(data) - n + 1)) {
    prods[i] <- prod(data[i:(i + n - 1)])
  }
  max(prods, na.rm = TRUE)
}
