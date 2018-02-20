context("Test Euler problem solutions")

test_that("Test Euler problem 11", {
  expect_equal(euler_11(data_11), 70600674L)
})

test_that("Test Euler problem 67", {
  expect_equal(euler_67(data_67), 7272L)
})
