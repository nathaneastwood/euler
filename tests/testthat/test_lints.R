if (requireNamespace("lintr", quietly = TRUE)) {
  context("Check the lints")
  test_that("Package Style", {
    lintr::expect_lint_free()
  })
}
