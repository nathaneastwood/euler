#' Project Euler 4: Largest palindrome product
#'
#' This is a solution to
#' \href{https://projecteuler.net/problem=4}{Euler problem 4}.
#'
#' @param x N digits
#'
#' @examples
#' euler_4(600851475143)
#'
#' @export
euler_4 <- function(x) {

  max_val = (10^x)-1
  min_val = (10^(x-1)) + 1
  palindrome = NULL

  for(i in max_val:min_val){

    for(j in max_val:min_val){


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

  max(as.numeric(palindrome))

}
