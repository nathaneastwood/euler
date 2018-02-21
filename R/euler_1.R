#' Project Euler 1: Multiples of 3 and 5
#'
#' This is a solution to
#' \href{https://projecteuler.net/problem=1}{Euler problem 1}.
#'
#' @param x Max value
#'
#' @examples
#' euler_1(1000)
#'
#' @export
euler_1 <- function(x) {

  threes = NULL
  fives = NULL
  fifteens = NULL
  for(i in 1:(x-1)){
    if(i%%3==0){
      threes = c(threes, i)
    }
    if(i%%5==0){
      fives = c(fives, i)
    }
    if(i%%15==0){
      fifteens = c(fifteens, i)
    }
  }
  sum(threes) + sum(fives) - sum(fifteens)
}
