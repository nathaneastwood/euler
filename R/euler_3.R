#' Project Euler 3: Largest prime factor
#'
#' This is a solution to
#' \href{https://projecteuler.net/problem=3}{Euler problem 3}.
#'
#' @param x Value
#'
#' @examples
#' euler_3(600851475143)
#'
#' @export
euler_4 <- function(x) {

  palindrome = NULL
  for(i in 999:101){
    for(j in 999:101){
      num = as.character(i*j)
      mid = round((nchar(num)/2)-0.1)
      first_half = substr(num, 1, mid)

      second_half = substr(num, (nchar(num)-mid)+1, nchar(num))
      second_half_reversed = paste(rev(strsplit(second_half, "")[[1]]), collapse="")

      if(first_half == second_half_reversed){
        palindrome = c(num, palindrome)
        break()

      }


    }
  }

  max(palindrome)

}
