#' Find all factors of a number
#'
#' @param x Value to find factors of
#' @return List of vectors of factor pairs
#' @examples
#' euler:::find_factors(1000)
find_factors <- function(x) {
  factors <- list()

  for (i in 1:sqrt(x)) {
    if (x %% i == 0) {
      factors[[length(factors) + 1]] <- c(i, x / i)
    }
  }

  factors
}

#' Work out if a number is a prime number
#'
#' @param n An integer.
is_prime <- function(n) {
  n == 2L || all(n %% 2L:max(2, floor(sqrt(n))) != 0)
}

#' Find triangle numbers
#'
#' @param x How many triangle numbers to find
#' @examples
#' euler:::triangle(10)
triangle <- function(x) {
  vals <- seq(from = 1, to = x)
  cumsum(vals)
}

#' Count all factors of a number
#'
#' @param x Value to count factors of
#' @examples
#' euler:::count_factors(1000)
count_factors <- function(x) {
  factors <- unlist(find_factors(x))
  length(unique(factors))
}

#' Generate Pythagorean triples using Euclid's formula
#'
#' @details
#' From the fact that for positive integers m and n, m > n, the a, b, and c
#' given by the formula are all positive integers
#'
#' @param m,n Positive integers where m > n > 0
#' @param k A multiplier
#'
#' @return A list containing a, b, and c
#'
#' @source
#' \url{https://en.wikipedia.org/wiki/Pythagorean_triple#Generating_a_triple}
#'
#' @examples
#' euler:::euclid(2, 1)
euclid <- function(m, n, k = 1) {
  if (m <= 0 | n <= 0) {
    stop("m and n must be > 0")
  }
  if (m <= n) {
    stop("m must be greater than n")
  }
  list(
    a = k * (m^2 - n^2),
    b = k * (2 * m * n),
    c = k * (m^2 + n^2)
  )
}

#' Sieve of Eratosthenes for generating primes 2:n
#'
#' @param n An integer. Find all primes below this number.
#'
#' @return A vector of integers
#'
#' @source
#' \url{https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes}
#'
#' @examples
#' euler:::esieve(10)
esieve <- function(n) {
  if (n == 1) return(NULL)
  if (n == 2) return(n)
  # Create a list l of consecutive integers {2, 3, ..., N}.
  l <- 2:n
  # Start counter
  i <- 1
  # Select p as the first prime number in the list, p = 2.
  p <- 2
  while (p^2 <= n) {
    # Remove all multiples of p from the l.
    l <- l[l == p | l %% p != 0]
    # set p equal to the next integer in l which has not been removed.
    i <- i + 1
    # Repeat steps 3 and 4 until p2 > n, all the remaining numbers in the list
    # are primes
    p <- l[i]
  }
  l
}

#' Check if a number is a palindrome, i.e. it remains the same
#' whether read from left to right or right to left.
#'
#' @param x a numeric value
#'
#' @return TRUE if it is a palindrome, FALSE otherwise
#'
#' @examples
#' euler:::is_palindrome(1001)
is_palindrome <- function(x) {
  char_x <- as.character(x)
  vector_x <- unlist(strsplit(char_x, split = ""))
  all(vector_x == rev(vector_x))
}
