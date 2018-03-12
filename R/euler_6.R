#' Project Euler 6: Sum square difference
#'
#' This is a solution to
#' \href{https://projecteuler.net/problem=6}{Euler problem 6}.
#'
#' @param n An integer.
#'
#' @examples
#' euler_6(10)
#' euler_6(100)
#'
#' @export
euler_6 <- function(n) {
  sum_of_the_squares <- sum((1:n)^2)
  square_of_the_sum <- sum(1:n)^2
  square_of_the_sum - sum_of_the_squares
}
