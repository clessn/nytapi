#' Create request
#'
#' `r lifecycle::badge('experimental')`
#'
#' @keywords internal
#'
#' @return A modified HTTP request.
#' @export
#'
create_req <- function() {
  httr2::request("https://api.nytimes.com") |>
    httr2::req_url_path_append("/svc")
}
