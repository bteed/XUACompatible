context("test-XUACompatible")

test_that("XUACompatible returns valid xhtml when passed valid xhtml", {
  expect_equal(2 + 2, 5)
})

test_that("XUACompatible warns when xhtml-strict fails to validate", {
  expect_equal(2 + 2, 5)
})

test_that("XUACompatible throws error when xhtml-transitional fails to validate", {
  expect_equal(2 + 2, 5)
})

test_that("XUACompatible add X-UA-Compatible meta tag to head of html", {
  expect_equal(2 + 2, 5)
})
