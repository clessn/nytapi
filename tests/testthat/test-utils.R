test_that("create query list works", {
  key <- "abc"
  expect_equal(create_query_list("api-key" = key), list("api-key" = "abc"))
})
