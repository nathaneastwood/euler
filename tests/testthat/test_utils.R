context("Test utility functions")

test_that("find_factors returns a list of factors", {
  expected_result <- list(
    c(1, 1000),
    c(2, 500),
    c(4, 250),
    c(5, 200),
    c(8, 125),
    c(10, 100),
    c(20, 50),
    c(25, 40)
  )

  expect_equal(find_factors(1000), expected_result)
})

test_that("is_prime returns whether a number is prime", {
  expect_true(is_prime(13))
  expect_false(is_prime(1337))
})

test_that("triangle returns triangle numbers", {
  expected_result <- c(
    1L, 3L, 6L, 10L, 15L, 21L, 28L,
    36L, 45L, 55L, 66L, 78L, 91L,
    105L, 120L, 136L, 153L, 171L,
    190L, 210L
  )

  expect_equal(triangle(20), expected_result)
})

test_that("count_factors counts factors", {
  expect_equal(count_factors(1000), 16)
})

test_that("Test Euclid's formula", {
  expect_error(euclid(1, 2), "m must be greater than n")
  expect_error(euclid(0, 1), "m and n must be > 0")
  expect_error(euclid(2, 0), "m and n must be > 0")
  expect_equal(euclid(2, 1), euclid_expected)
  expect_equal(euclid(2, 1, 3), euclid_expected_k)
})

test_that("Test the Sieve of Eratosthenes", {
  expect_equal(esieve(1), NULL)
  expect_equal(esieve(2), 2L)
  expect_equal(esieve(10), c(2L, 3L, 5L, 7L))
})

test_that("is_palindrome checks for palindromes", {
  expect_true(is_palindrome(1001))
  expect_true(is_palindrome(0))
  expect_false(is_palindrome(-1))
  expect_false(is_palindrome(10))
})
