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
#' @param period Numeric. Period to get data. Either 1, 7 or 30. Defaults to 30.
#' @param key String. NYT key.
#'
#' @return HTTP response
#' @export
get_most_viewed <- function(period = 30, key = NULL) {
  path <- paste0("/viewed/", period, ".", "json?api-key=", key)


  create_popular_req() |>
    httr2::req_url_path_append(path)
}

# https://api.nytimes.com/svc/mostpopular/v2/viewed/1.json?api-key=yourkey
