test_that("create popular request works", {
  data <- create_popular_req()

  expect_equal(data[["url"]], "https://api.nytimes.com/svc/mostpopular/v2")
  expect_s3_class(data, "httr2_request")
})
