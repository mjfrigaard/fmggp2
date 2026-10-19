#' Sony Walkman theme
#'
#' A late 90s `ggplot2` theme modeled on the Sony Sports Walkman: a sports
#' yellow body with a blue button frame, a silver plot area, a charcoal
#' title and text, blue, charcoal, orange, gold, and silver marks, and a DIN
#' Condensed title.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to DIN Condensed when
#'     it's available on the system, otherwise `"sans"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c(3, 5), y = c("a", "b")), aes(x = x, y = y)) +
#'   geom_point(size = 3) +
#'   labs(title = "Walkman") +
#'   theme_walkman(base_family = "sans", title_family = "sans")
theme_walkman <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("DIN Condensed", "DIN Condensed Bold.ttf")) {
  cols <- walkman_cols
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["charcoal"]]),
      plot.background = ggplot2::element_rect(fill = cols[["yellow"]],
                                              colour = cols[["blue"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family,
                                         colour = cols[["charcoal"]],
                                         size = ggplot2::rel(1.5)),
      plot.subtitle = ggplot2::element_text(colour = cols[["charcoal"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["panel"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linewidth = 0.5),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["charcoal"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["blue"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["panel"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["yellow"]], colour = NA),
      # blue buttons, charcoal display, orange SPORTS label, gold trim, and
      # silver for discrete fills and colours
      palette.fill.discrete = unname(cols[c("blue", "charcoal", "orange", "gold", "silver")]),
      palette.colour.discrete = unname(cols[c("blue", "charcoal", "orange", "gold", "silver")]),
      # blue fills with charcoal lines by default
      geom = ggplot2::element_geom(ink = cols[["charcoal"]],
                                   paper = cols[["panel"]],
                                   accent = cols[["orange"]],
                                   colour = cols[["charcoal"]],
                                   fill = cols[["blue"]],
                                   family = base_family)
    )
}

walkman_cols <- c(
  yellow = "#F8CE00",
  panel = "#F6F6F4",
  grid = "#E4E2DB",
  blue = "#3351C6",
  charcoal = "#3A3A36",
  orange = "#C55C35",
  gold = "#D9A308",
  silver = "#B2AD9C"
)
