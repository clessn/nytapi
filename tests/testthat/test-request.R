test_that("create request works", {
  data <- create_req()

  expect_equal(data[["url"]], "https://api.nytimes.com/svc")
  expect_s3_class(data, "httr2_request")
})

test_that("add user agent works", {
  expect_error(add_user_agent())

  req <- create_req() |>
    add_user_agent()

  user_agent <- req[["options"]][["useragent"]]

  expect_equal(user_agent, "nytapi (https://github.com/clessn; info@clessn.ca)")

  expect_s3_class(req, "httr2_request")
})
