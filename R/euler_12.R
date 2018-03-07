#' Project Euler 12: Highly divisible triangular number
#'
#' This is a solution to
#' \href{https://projecteuler.net/problem=12}{Euler problem 12}.
#'
#' @param x A number of interest to find the first triangle number with that
#'   many divisors.
#'
#' @examples
#' euler_12(10)
#'
#' @export
euler_12 <- function(x) {

  max_factors <- 0
  val <- 1

  while (max_factors < x) {

    target_num <- triangle(val)[val]

    factors <- unique(unlist(find_factors(target_num)))
    if (length(factors) > max_factors) {
      max_factors <- length(factors)
    }
    val <- val + 1
  }

  target_num

}
