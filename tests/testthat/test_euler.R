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

test_that("Test Euler problem 8", {
  expect_equal(euler_8(data_8, 4), 5832L)
  expect_equal(euler_8(data_8, 13), 23514624000L)
})

test_that("Test Euler problem 9", {
  expect_equal(euler_9(12), 60L)
  expect_equal(euler_9(1000), 31875000L)
})

test_that("Test Euler problem 10", {
  expect_equal(euler_10(10), 17L)
  expect_equal(euler_10(2e6), 142913828922L)
})

test_that("Test Euler problem 11", {
  expect_equal(euler_11(data_11), 70600674L)
})

test_that("Test Euler problem 12", {
  expect_equal(euler_12(50), 25200L)
})

test_that("Test Euler problem 13", {
  expect_equal(euler_13(data_13), 5537376230L)
})

test_that("Test Euler problems 18 and 67", {
  expect_equal(euler_67(data_18), 1074L)
  expect_equal(euler_67(data_67_test), 23L)
  expect_equal(euler_67(data_67), 7273L)
})
