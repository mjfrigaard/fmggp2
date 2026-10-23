#' Super Soaker theme
#'
#' A late 90s `ggplot2` theme modeled on a Super Soaker: neon orange
#' plastic, a water blue plot area, neon green, purple, and blue marks, and an
#' Arial Black title.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Arial Black when
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
#'   labs(title = "Super Soaker") +
#'   theme_supersoaker(base_family = "sans", title_family = "sans")
theme_supersoaker <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Arial Black", "Arial Black.ttf")) {
  cols <- supersoaker_cols
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["ink"]]),
      plot.background = ggplot2::element_rect(fill = cols[["orange"]],
                                              colour = cols[["green"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family,
                                         colour = cols[["ink"]],
                                         size = ggplot2::rel(1.4)),
      plot.subtitle = ggplot2::element_text(colour = cols[["ink"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["water"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["ink"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["green"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["ink"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["orange"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = unname(cols[c("green", "purple", "blue")]),
      palette.colour.discrete = unname(cols[c("green", "purple", "blue")]),
      # default marks
      geom = ggplot2::element_geom(ink = cols[["ink"]],
                                   paper = cols[["water"]],
                                   accent = cols[["blue"]],
                                   colour = cols[["blue"]],
                                   fill = cols[["green"]],
                                   family = base_family)
    )
}

supersoaker_cols <- c(
  orange = "#FF7F00",
  water = "#E6F7FF",
  grid = "#B3E5FC",
  ink = "#1A1A1A",
  green = "#3DBE29",
  purple = "#7B2FBE",
  blue = "#0091EA",
  white = "#FFFFFF"
)
