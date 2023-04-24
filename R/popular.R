#' Create most popular request
#'
#' `r lifecycle::badge('experimental')`
#'
#' @keywords internal
#'
#' @return A modified HTTP request.
#' @export
#'
create_popular_req <- function() {
  create_req() |>
    httr2::req_url_path_append("/mostpopular/v2")
}

#' Get most viewed articles
#'
#' `r lifecycle::badge('experimental')`
#'
#' @param period Numeric. Period to get data. Either 1, 7 or 30. Defaults to 30.
#' @param key String. NYT key.
#' @param parse Logical. TRUE to return parsed JSON, FALSE to return HTTP
#' response.
#'
#' @return HTTP response or parsed JSON.
#' @export
get_most_viewed <- function(period = 30, key = NULL, parse = TRUE) {
  path <- paste0("/viewed/", period, ".", "json")

  params <- create_query_list("api-key" = key)

  resp <- create_popular_req() |>
    httr2::req_url_path_append(path) |>
    httr2::req_url_query(!!!params) |>
    httr2::req_perform()

  if (parse) {
    json <- resp |> httr2::resp_body_json()
    return(json)
  } else {
  return(resp)
  }
}
