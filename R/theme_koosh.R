#' Koosh ball theme
#'
#' A `ggplot2` theme built from a tri color Koosh ball: a white background,
#' an orange frame, orange, purple, and black filament marks, peach and lilac
#' accents, and an Arial Rounded title.
#'
#' @param base_size Base font size. Defaults to `11`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Arial Rounded when
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
#'   labs(title = "Koosh") +
#'   theme_koosh(base_family = "sans", title_family = "sans")
theme_koosh <- function(base_size = 11,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Arial Rounded", "Arial Rounded Bold.ttf")) {
  cols <- koosh_cols
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["ink"]]),
      plot.background = ggplot2::element_rect(fill = cols[["white"]],
                                              colour = cols[["orange"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family,
                                         colour = cols[["purple"]],
                                         size = ggplot2::rel(1.5)),
      plot.subtitle = ggplot2::element_text(colour = cols[["ink"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["panel"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["ink"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["purple"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["white"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["white"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = unname(cols[c("orange", "purple", "ink", "peach", "lilac", "red")]),
      palette.colour.discrete = unname(cols[c("orange", "purple", "ink", "peach", "lilac", "red")]),
      # default marks
      geom = ggplot2::element_geom(ink = cols[["ink"]],
                                   paper = cols[["panel"]],
                                   accent = cols[["purple"]],
                                   colour = cols[["white"]],
                                   fill = cols[["orange"]],
                                   family = base_family)
    )
}

# a tri color Koosh ball
koosh_cols <- c(
  white = "#FFFFFF",
  panel = "#F6F3F7",
  grid = "#E6DDE9",
  ink = "#1C1B1C",
  orange = "#EB4A05",
  purple = "#775384",
  plum = "#472847",
  red = "#AD1409",
  peach = "#EC906F",
  lilac = "#927BA1"
)
