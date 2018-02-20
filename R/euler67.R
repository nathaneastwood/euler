#' Euler 67
#' 
#' This is a solution to 
#' \href{https://projecteuler.net/problem=67}{Euler problem 67}.
#' 
#' @param triangle A lower triangle matrix
#' 
#' @examples
#' euler67(triangle)
#' 
#' @export
euler67 <- function(triangle) {
  for (i in nrow(triangle):2) {
    for (j in 1:(ncol(triangle) - 1)) {
      triangle[i - 1, j] <- max(triangle[i, j:(j + 1)]) + triangle[i - 1, j]
    }
    triangle[i, ] <- NA
  }
  max(triangle, na.rm = TRUE)
}
