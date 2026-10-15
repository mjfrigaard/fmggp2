#' Quarto callout box
#'
#' Writes the markdown for a Quarto callout box. Use it in a chunk with
#' `results: asis`.
#'
#' @param color One of `"b"` (note), `"g"` (tip), `"r"` (important), `"o"`
#'     (warning), or `"y"` (caution).
#' @param header Callout header text.
#' @param contents Callout body text.
#' @param size Body font size (em).
#' @param hsize Header font size (em).
#' @param fold Logical; collapse the callout?
#' @param look One of `"default"`, `"simple"`, or `"minimal"`.
#'
#' @return Called for its side effect: the callout markdown is printed with
#'     `cat()`.
#'
#' @export
#'
#' @examples
#' co_box(color = "b", header = "Note", contents = "Some text")
co_box <- function(color, header, contents = "Your text", size = "1.05",
                   hsize = "1.10", fold = FALSE, look = "default") {
  if (!look %in% c("simple", "minimal")) {
    look <- "default"
  }
  fold <- tolower(as.character(fold))
  size <- as.character(size)

  class <- switch(color,
    b = "note",
    g = "tip",
    r = "important",
    o = "warning",
    y = "caution",
    stop("Invalid `type`", call. = FALSE)
  )
  cat(paste0(
    "\n\n",
    ":::: {.callout-", class, " collapse='", fold, "'", " appearance='", look, "'}", "\n\n",
    "## [", header, "]{style='font-weight: bold; font-size: ", hsize, "em;'}\n\n",
    "::: {style='font-size: ", size, "em; color: #282b2d;'}\n\n",
    "\n", glue::glue_collapse(contents), "\n\n",
    "::: \n\n",
    "::::", "\n"
  ))
}
