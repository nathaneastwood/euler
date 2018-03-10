#' Project Euler 4: Largest palindrome product
#'
#' This is a solution to
#' \href{https://projecteuler.net/problem=4}{Euler problem 4}.
#'
#' @param x Find the largest palindrome made from the product of two \code{x}-
#'   digit numbers.
#'
#' @examples
#' euler_4(2)
#'
#' @export
euler_4 <- function(x) {

  max_val <- (10 ^ x) - 1
  min_val <- (10 ^ (x - 1)) + 1
  
  digits <- seq(from=min_val, to=max_val)
  # generate all possible values
  possibles <- digits %*% t(digits)
  possibles <- as.vector(possibles[upper.tri(possibles)])
  # sort them from high to low
  possibles <- possibles[order(possibles, decreasing = TRUE)]
  # loop through all values until you find the palindrome
  for(i in seq_len(length(possibles))){
    if(is_palindrome(possibles[i])){
      return(possibles[i])
    }
  }
  return(NA)

}
