#' Project Euler 2: Even Fibonacci numbers
#'
#' This is a solution to
#' \href{https://projecteuler.net/problem=2}{Euler problem 2}.
#'
#' @param x Max value
#'
#' @examples
#' euler_2(4000000)
#'
#' @export
euler_2 <- function(x) {
  vals <- c(1, 2)

  for (i in 3:x) {
    newval <- vals[i - 1] + vals[i - 2]
    if (newval > x) {
      break
    } else {
      vals <- c(vals, newval)
    }
  }

  sum(vals[vals %% 2 == 0])
}
