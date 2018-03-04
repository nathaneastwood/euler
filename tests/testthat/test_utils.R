context("Test the package utility functions")

test_that("Test Euclid's formula", {
  expect_equal(euclid(2, 1), euclid_expected)
  expect_equal(euclid(2, 1, 3), euclid_expected_k)
})
