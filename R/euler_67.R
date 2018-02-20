#' Project Euler 67: Maximum path sum II
#'
#' This is a solution to
#' \href{https://projecteuler.net/problem=67}{Euler problem 67}.
#'
#' @param data A lower triangle matrix.
#'
#' @examples
#' euler_67(data_67)
#'
#' @export
euler_67 <- function(data) {
  for (i in nrow(data):2) {
    for (j in 1:(ncol(data) - 1)) {
      data[i - 1, j] <- max(data[i, j:(j + 1)]) + data[i - 1, j]
    }
    data[i, ] <- NA
  }
  max(data, na.rm = TRUE)
}
