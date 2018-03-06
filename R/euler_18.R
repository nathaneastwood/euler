#' Project Euler 18 (67): Maximum path sum I (II)
#'
#' This is a solution to
#' \href{https://projecteuler.net/problem=18}{Euler problem 18} and
#' \href{https://projecteuler.net/problem=67}{Euler problem 67}.
#'
#' The code that solves both of these problems is the same.
#'
#' @param data A lower triangle matrix.
#'
#' @examples
#' euler_18(data_18)
#' euler_67(data_67)
#'
#' @export
euler_18 <- function(data) {
  for (i in nrow(data):2) {
    for (j in 1:(ncol(data) - 1)) {
      data[i - 1, j] <- max(data[i, j:(j + 1)]) + data[i - 1, j]
    }
    data[i, ] <- NA
  }
  max(data, na.rm = TRUE)
}

#' @rdname euler_18
#' @export
euler_67 <- function(data) {
  euler_18(data)
}
