test_that("create request works", {
  data <- create_req()

  expect_equal(data[["url"]], "https://api.nytimes.com/svc")
  expect_s3_class(data, "httr2_request")
})
