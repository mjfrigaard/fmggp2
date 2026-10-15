#' Not in
#'
#' The not in operator for R.
#'
#' @param x vector or `NULL`: the values to be matched.
#' @param y vector or `NULL`: the values to be matched against.
#'
#' @return The negation of `%in%`.
#'
#' @export
#'
#' @examples
#' 1 %nin% 2:10
#' c("a", "b") %nin% c("a", "c", "d")
`%nin%` <- function(x, y) {
  !(x %in% y)
}
