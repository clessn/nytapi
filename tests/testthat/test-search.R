test_that("search articles works", {

  resp <- search_articles(query = "Wikipedia", key = Sys.getenv("NYT_TOKEN"))

  expect_s3_class(resp, "httr2_response")
})
