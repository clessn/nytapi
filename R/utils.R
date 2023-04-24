#' Create query list
#'
#' @param ... Name value pairs.
#'
#' @return A named list.
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
