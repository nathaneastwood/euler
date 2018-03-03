#' Project Euler 5: Smallest multiple
#'
#' This is a solution to
#' \href{https://projecteuler.net/problem=5}{Euler problem 5}.
#'
#' @param x An integer.
#'
#' @examples
#' euler_5(10)
#' euler_5(20)
#'
#' @export
euler_5 <- function(x) {
  composite <- 1
  for (i in 1:x) {
    remain <- (composite %% i)
    if (remain != 0) {
      if (i %% remain == 0) {
        composite <- composite * i / remain
      }
      else {
        composite <- composite * i
      }
    }
  }
  composite
}
