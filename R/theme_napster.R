#' Napster theme
#'
#' A late 90s `ggplot2` theme modeled on the dark 1999 Napster client: near
#' black window, white text, dark gray grid, and bright lime marks.
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
      plot.title = ggplot2::element_text(face = "bold", size = ggplot2::rel(1.1)),
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
      # lime first, then gray and white for discrete fills and colours
      palette.fill.discrete = unname(cols[c("lime", "gray", "text")]),
      palette.colour.discrete = unname(cols[c("lime", "gray", "text")]),
      # lime marks by default
      geom = ggplot2::element_geom(ink = cols[["text"]],
                                   paper = cols[["panel"]],
                                   accent = cols[["lime"]],
                                   colour = cols[["lime"]],
                                   fill = cols[["lime"]])
    )
}

napster_cols <- c(
  window = "#1C1C1C",
  panel = "#262626",
  grid = "#4A4A4A",
  gray = "#8C8C8C",
  text = "#F2F2F2",
  lime = "#7CFC00"
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
