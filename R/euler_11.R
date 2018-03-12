#' Project Euler 11: Largest product in a grid
#'
#' This is a solution to
#' \href{https://projecteuler.net/problem=11}{Euler problem 11}.
#'
#' @param data A matrix of integers.
#'
#' @examples
#' euler_11(data_11)
#'
#' @export
euler_11 <- function(data) {
  # left to right
  left <-
    data[1:nrow(data), 1:(ncol(data) - 3)] *
      data[1:nrow(data), 2:(ncol(data) - 2)] *
      data[1:nrow(data), 3:(ncol(data) - 1)] *
      data[1:nrow(data), 4:ncol(data)]
  # top to bottom
  down <-
    data[1:(nrow(data) - 3), 1:ncol(data)] *
      data[2:(nrow(data) - 2), 1:ncol(data)] *
      data[3:(nrow(data) - 1), 1:ncol(data)] *
      data[4:nrow(data), 1:ncol(data)]
  # diagonal right
  diag_right <-
    data[1:(nrow(data) - 3), 1:(ncol(data) - 3)] *
      data[2:(nrow(data) - 2), 2:(ncol(data) - 2)] *
      data[3:(nrow(data) - 1), 3:(ncol(data) - 1)] *
      data[4:nrow(data), 4:ncol(data)]
  # diagnoal left
  diag_left <-
    data[1:(nrow(data) - 3), 4:ncol(data)] *
      data[2:(nrow(data) - 2), 3:(ncol(data) - 1)] *
      data[3:(nrow(data) - 1), 2:(ncol(data) - 2)] *
      data[4:nrow(data), 1:(ncol(data) - 3)]

  max(left, down, diag_left, diag_right, na.rm = TRUE)
}
