#' Napster theme
#'
#' A late 90s `ggplot2` theme modeled on the 1999 Napster client: a gray
#' window, black text, a black chat area with a dotted gray grid, and cyan,
#' red, lime, and yellow chat marks.
#'
#' @param base_size Base font size. Defaults to `11`.
#' @param base_family Base font family. Defaults to Verdana when it's
#'     available on the system, otherwise `"sans"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = rgamma(100, shape = 4)), aes(x = x)) +
#'   geom_freqpoly(bins = 20) +
#'   labs(title = "Napster") +
#'   theme_napster(base_family = "sans")
theme_napster <- function(base_size = 11, base_family = napster_font()) {
  cols <- napster_cols
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["text"]]),
      plot.background = ggplot2::element_rect(fill = cols[["window"]],
                                              colour = cols[["window"]]),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(face = "bold", colour = cols[["navy"]],
                                         size = ggplot2::rel(1.1)),
      plot.subtitle = ggplot2::element_text(colour = cols[["gray"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["panel"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linetype = "dotted"),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["text"]]),
      axis.ticks = ggplot2::element_blank(),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["window"]],
                                         colour = NA),
      # the chat colors for discrete fills and colours
      palette.fill.discrete = unname(cols[c("cyan", "red", "lime", "yellow")]),
      palette.colour.discrete = unname(cols[c("cyan", "red", "lime", "yellow")]),
      # cyan marks by default
      geom = ggplot2::element_geom(ink = cols[["cyan"]],
                                   paper = cols[["panel"]],
                                   accent = cols[["red"]],
                                   colour = cols[["cyan"]],
                                   fill = cols[["cyan"]])
    )
}

napster_cols <- c(
  window = "#C6C6C6",
  panel = "#000000",
  grid = "#4A4A4A",
  gray = "#3E3E3E",
  text = "#000000",
  navy = "#0B2187",
  cyan = "#00FFFF",
  red = "#FF0000",
  lime = "#00FF00",
  yellow = "#FFFF00"
)

# Verdana ships with macOS and Windows; fall back to sans when it's missing
napster_font <- function(dir = "/System/Library/Fonts/Supplemental") {
  verdana <- file.path(dir, "Verdana.ttf")
  verdana_bold <- file.path(dir, "Verdana Bold.ttf")
  if (file.exists(verdana) && file.exists(verdana_bold)) {
    sysfonts::font_add(family = "Verdana", regular = verdana,
                       bold = verdana_bold)
    "Verdana"
  } else {
    "sans"
  }
}
