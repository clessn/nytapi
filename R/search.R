#' Look up articles by keywords
#'
#' `r lifecycle::badge('experimental')`
#'
#' @param query Search query
#' @param filter Search filters
#' @param ... Other things to pass onto query
#' @param key API key
#' @param parse Logical. TRUE to return parsed JSON, FALSE to return HTTP
#' response.
#'
#' @return HTTP response or parsed JSON.
#' @export
search_articles <- function(query = NULL, filter = NULL, ..., key = NULL,
                            parse = TRUE){

  params <- create_query_list(q = query,
                    fq = filter,
                    ...,
                    "api-key" = key)

  resp <- create_req() |>
    httr2::req_url_path_append("/search/v2/articlesearch.json") |>
    httr2::req_url_query(!!!params) |>
    nytapi::add_user_agent() |>
    httr2::req_throttle(5/60) |>
    httr2::req_perform()

  if (parse) {
    json <- resp |> httr2::resp_body_json()
    return(json)
  } else {
    return(resp)
  }
}
