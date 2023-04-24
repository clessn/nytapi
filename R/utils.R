



#' Create query string
#'
#' @param ... Name value pairs.
#'
#' @return
#' @export
#'
#' @examples
create_query_list <- function(...) {
  params <- list(
    ...
  )

  names(params) <- paste0(names(params))

  return(params)
}
