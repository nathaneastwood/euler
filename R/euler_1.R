#' Project Euler 1: Multiples of 3 and 5
#'
#' This is a solution to
#' \href{https://projecteuler.net/problem=1}{Euler problem 1}.
#'
#' @param x Max value
#'
#' @examples
#' euler_1(1000)
#'
#' @export
euler_1 <- function(x) {

  vals = 1:(x-1)
  sum(vals[vals%%3==0|vals%%5==0])

}
