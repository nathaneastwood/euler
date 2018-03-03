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

test_that("Test Euler problem 4", {
  expect_equal(euler_4(3), 906609L)
})

test_that("Test Euler problem 5", {
  expect_equal(euler_5(10), 2520L)
})

test_that("Test Euler problem 6", {
  expect_equal(euler_6(10), 2640L)
})

test_that("Test Euler problem 7", {
  expect_equal(euler_7(6), 13L)
})

test_that("Test Euler problem 11", {
  expect_equal(euler_11(data_11), 70600674L)
})

test_that("Test Euler problem 13", {
  expect_equal(euler_13(data_13), 5537376230L)
})

test_that("Test Euler problems 18 and 67", {
  expect_equal(euler_67(data_18), 1074L)
  expect_equal(euler_67(data_67_test), 23L)
  expect_equal(euler_67(data_67), 7273L)
})

