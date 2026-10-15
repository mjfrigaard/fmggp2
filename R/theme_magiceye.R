#' Magic Eye theme
#'
#' A late 90s `ggplot2` theme modeled on a Magic Eye stereogram poster: a
#' deep indigo background, psychedelic magenta, teal, and orange marks, and a
#' Skia title.
#'
#' @param base_size Base font size. Defaults to `11`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Skia when
#'     it's available, otherwise `"sans"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Magic Eye") +
#'   theme_magiceye(base_family = "sans", title_family = "sans")
theme_magiceye <- function(base_size = 11,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Skia", "Skia.ttf")) {
  cols <- magiceye_cols
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["white"]]),
      plot.background = ggplot2::element_rect(fill = cols[["indigo"]],
                                              colour = cols[["magenta"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family,
                                         colour = cols[["teal"]],
                                         size = ggplot2::rel(1.4)),
      plot.subtitle = ggplot2::element_text(colour = cols[["white"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["panel"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["white"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["magenta"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["indigo"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["indigo"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = unname(cols[c("magenta", "teal", "orange", "violet")]),
      palette.colour.discrete = unname(cols[c("magenta", "teal", "orange", "violet")]),
      # default marks
      geom = ggplot2::element_geom(ink = cols[["white"]],
                                   paper = cols[["panel"]],
                                   accent = cols[["teal"]],
                                   colour = cols[["white"]],
                                   fill = cols[["magenta"]],
                                   family = base_family)
    )
}

magiceye_cols <- c(
  indigo = "#1B1446",
  panel = "#261C5C",
  grid = "#3B2F7A",
  white = "#F2F0FF",
  magenta = "#FF2E93",
  teal = "#14D8C4",
  orange = "#FF9F1C",
  violet = "#9B5DE5"
)
