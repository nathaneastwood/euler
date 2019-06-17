#' Project Euler 14: Longest Collatz sequence
#'
#' This is a solution to
#' \href{https://projecteuler.net/problem=14}{Euler problem 14}.
#'
#' Calculates the length of the chain for each Collatz number from 1 to the
#' number specified by \code{num}.
#'
#' @param num A number for which to find the longest Collatz number up to.
#'
#' @examples
#' euler_14(1e6)
#'
#' @export
euler_14 <- function(num) {
  lengths <- vector(length = num)
  lengths[1] <- 0
  for (i in seq_len(num)[-1]) {
    n <- i
    count <- 0
    while (n != 1 & n >= i) {
      if (n %% 2 == 0) {
        n <- n / 2
        count <- count + 1
      }
      else {
        # Note that multiplying a number by 3 and adding one always gives an
        # even number
        n <- (3 * n + 1) / 2
        count <- count + 2
      }
    }
    count <- count + lengths[n]
    lengths[i] <- count
  }
  which.max(lengths)
}
