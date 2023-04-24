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

#' Add user agent to request
#'
#' `r lifecycle::badge('experimental')`
#'
#' @param req A HTTP request.
#'
#' @keywords internal
#'
#' @return A modified HTTP request.
#' @export
#'
add_user_agent <- function(req) {
  req |>
    httr2::req_user_agent("nytapi (https://github.com/clessn; info@clessn.ca)")
}
