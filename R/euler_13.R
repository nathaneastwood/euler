#' Project Euler 13: Large sum
#'
#' This is a solution to
#' \href{https://projecteuler.net/problem=13}{Euler problem 13}.
#'
#' @param data A matrix of integers.
#'
#' @examples
#' euler_13(data_13)
#'
#' @export
euler_13 <- function(data) {
  cols <- ncol(data)

  col_total <- numeric(cols)
  for (i in cols:1) {
    val <- sum(data[, i]) + col_total[i]
    remainder <- val %% 10
    move <- (val - remainder) / 10
    if (i > 1) {
      col_total[i - 1] <- move
      col_total[i] <- remainder
    } else {
      col_total[i] <- val
    }
  }

  grand_total <- paste(col_total, collapse = "")
  individual_numbers <- strsplit(grand_total, "")
  first_ten <- paste(unlist(individual_numbers)[1:10], collapse = "")
  as.numeric(first_ten)
}
