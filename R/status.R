#' Chapter status callout
#'
#' Writes a Quarto callout describing how complete a chapter is. Use it in a
#' chunk with `results: asis`.
#'
#' @param type One of `"polish"`, `"dev"`, `"draft"`, or `"complete"`.
#'
#' @return Called for its side effect: the callout markdown is printed with
#'     `cat()`.
#'
#' @export
#'
#' @examples
#' status("complete")
status <- function(type) {
  status <- switch(type,
    polish = "should be readable but is currently undergoing final polishing",
    dev = "is still in development and may be confusing or incomplete",
    draft = "is currently a dumping ground for ideas, and we don't recommend reading it",
    complete = "is largely complete and just needs final proof reading",
    stop("Invalid `type`", call. = FALSE)
  )

  class <- switch(type,
    polish = "note",
    dev = "warning",
    draft = "caution",
    complete = "tip"
  )

  cat(paste0(
    "\n",
    "::: {.callout-", class, " appearance='simple'", " icon=false}", "\n",
    "***This graph ", status, ".*** ", "\n",
    ":::", "\n"
  ))
}
