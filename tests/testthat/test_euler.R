context("Test Euler problem solutions")

test_that("Test Euler problem 1", {
  expect_equal(euler_1(1000), 233168L)
})

test_that("Test Euler problem 2", {
  expect_equal(euler_2(4000000), 4613732L)
})

test_that("Test Euler problem 3", {
  expect_equal(euler_3(600851475143), 6857L)
})

test_that("Test Euler problem 11", {
  expect_equal(euler_11(data_11), 70600674L)
})

test_that("Test Euler problem 67", {
  expect_equal(euler_67(data_67), 7272L)
})

