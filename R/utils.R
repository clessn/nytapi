#' Create query list
#'
#' `r lifecycle::badge('experimental')`
#'
#' @param ... Name value pairs.
#'
#' @return A named list.
#' @export
create_query_list <- function(...) {
  params <- list(
    ...
  )

  names(params) <- paste0(names(params))

  return(params)
}
