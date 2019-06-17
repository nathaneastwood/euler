context("Test Euler problem solutions")

test_that("Test Euler problem 1", {
  expect_equal(euler_1(1000), 233168)
})

test_that("Test Euler problem 2", {
  expect_equal(euler_2(4000000), 4613732)
})

test_that("Test Euler problem 3", {
  expect_equal(euler_3(600851475143), 6857)
})

test_that("Test Euler problem 4", {
  expect_equal(euler_4(3), 906609)
  expect_equal(euler_4(0), NA)
})

test_that("Test Euler problem 5", {
  expect_equal(euler_5(10), 2520)
})

test_that("Test Euler problem 6", {
  expect_equal(euler_6(10), 2640)
})

test_that("Test Euler problem 7", {
  expect_equal(euler_7(6), 13L)
})

test_that("Test Euler problem 8", {
  expect_equal(euler_8(data_8, 4), 5832)
  expect_equal(euler_8(data_8, 13), 23514624000)
})

test_that("Test Euler problem 9", {
  expect_equal(euler_9(12), 60)
  expect_equal(euler_9(1000), 31875000)
})

test_that("Test Euler problem 10", {
  expect_equal(euler_10(10), 17L)
  expect_equal(euler_10(2e6), 142913828922)
})

test_that("Test Euler problem 11", {
  expect_equal(euler_11(data_11), 70600674)
})

test_that("Test Euler problem 12", {
  expect_equal(euler_12(50), 25200)
})

test_that("Test Euler problem 13", {
  expect_equal(euler_13(data_13), 5537376230)
})

test_that("Test Euler problem 14", {
  expect_equal(euler_14(1e6), 837799L)
})

test_that("Test Euler problems 18 and 67", {
  expect_equal(euler_67(data_18), 1074)
  expect_equal(euler_67(data_67_test), 23)
  expect_equal(euler_67(data_67), 7273)
})
