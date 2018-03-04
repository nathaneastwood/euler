#' Project Euler 9: Special Pythagorean triplet
#'
#' This is a solution to
#' \href{https://projecteuler.net/problem=9}{Euler problem 9}.
#'
#' @param n An integer.
#'
#' @examples
#' euler_9(3 + 4 + 5)
#' euler_9(1000)
#'
#' @export
euler_9 <- function(n) {
  x <- n / 2
  min <- ceiling(sqrt(x / 2))
  max <- floor(sqrt(x))
  m <- min:max
  m <- m[x %% m == 0]
  n <- ((x / m) - m)
  abc <- euclid(m, n)
  abc$a * abc$b * abc$c
}
