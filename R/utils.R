#' Find all factors of a number
#'
#' @param x Value to find factors of
#' @return List of vectors of factor pairs
#' @examples
#' euler:::find_factors(1000)
find_factors <- function(x){

  factors <- list()

  for(i in 1:sqrt(x)){
    if(x %% i == 0){
      factors[[length(factors) + 1]] <- c(i, x / i)
    }
  }

  factors

}

#' Test if a number is prime
#'
#' @param x Value to test
#' @examples
#' euler:::is_prime(39)
is_prime <- function(x) {
  factors <- find_factors(x)
  if (length(factors) == 1) {
    TRUE
  } else {
    FALSE
  }
}
