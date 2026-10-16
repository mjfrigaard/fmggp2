#' Doom theme
#'
#' A `ggplot2` theme built from Doom (1993): a scorched brown background,
#' a hellfire red frame and title, red, orange, gunmetal, armor green,
#' blue key, and yellow key marks, and an Impact title.
#'
#' @param base_size Base font size. Defaults to `11`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Impact when
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
#'   labs(title = "Doom") +
#'   theme_doom(base_family = "sans", title_family = "sans")
theme_doom <- function(base_size = 11,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Impact", "Impact.ttf")) {
  cols <- doom_cols
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["bone"]]),
      plot.background = ggplot2::element_rect(fill = cols[["scorch"]],
                                              colour = cols[["red"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family,
                                         colour = cols[["red"]],
                                         size = ggplot2::rel(1.5)),
      plot.subtitle = ggplot2::element_text(colour = cols[["bone"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["floor"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["bone"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["red"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["bone"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["scorch"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = unname(cols[c("orange", "red", "gunmetal", "armor", "bluekey", "yellowkey")]),
      palette.colour.discrete = unname(cols[c("orange", "red", "gunmetal", "armor", "bluekey", "yellowkey")]),
      # default marks
      geom = ggplot2::element_geom(ink = cols[["bone"]],
                                   paper = cols[["floor"]],
                                   accent = cols[["red"]],
                                   colour = cols[["orange"]],
                                   fill = cols[["orange"]],
                                   family = base_family)
    )
}

# the hell textures, the status bar, and the keycards
doom_cols <- c(
  scorch = "#1A0F0A",
  floor = "#2B1A12",
  grid = "#4A2E20",
  bone = "#E8D5B5",
  red = "#D63A1E",
  orange = "#F28C28",
  gunmetal = "#8A8D8F",
  armor = "#4CAF50",
  bluekey = "#2E6FD8",
  yellowkey = "#F2C14E"
)

