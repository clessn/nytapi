#' Look up articles by keywords
#'
#' `r lifecycle::badge('experimental')`
#'
#' @param query Search query
#' @param filter Search filters
#' @param ... Other things to pass onto query
#' @param key API key
#'
#' @return HTTR response
#' @export
search_articles <- function(query = NULL, filter = NULL, ..., key = NULL){

  params <- list(
    q = query,
    fq = filter,
    ...,
    "api-key" = key
  )

  names(params) <- paste0(names(params))

  create_req() |>
    httr2::req_url_path_append("/search/v2/articlesearch.json") |>
    httr2::req_url_query(!!!params) |>
    nytapi::add_user_agent() |>
    httr2::req_throttle(5/60) |>
    httr2::req_perform()

}
