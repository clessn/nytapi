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
