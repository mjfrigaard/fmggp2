#' Sony Walkman theme
#'
#' A late 90s `ggplot2` theme modeled on the Sony Sports Walkman: a cobalt
#' blue backdrop with white grid lines, a sports yellow frame and title,
#' yellow, green, and beige button colors as marks, charcoal lines, and a
#' DIN Condensed title.
#'
#' @param base_size Base font size. Defaults to `11`.
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
theme_walkman <- function(base_size = 11,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("DIN Condensed", "DIN Condensed Bold.ttf")) {
  cols <- walkman_cols
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["white"]]),
      plot.background = ggplot2::element_rect(fill = cols[["cobalt"]],
                                              colour = cols[["yellow"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family,
                                         colour = cols[["yellow"]],
                                         size = ggplot2::rel(1.5)),
      plot.subtitle = ggplot2::element_text(colour = cols[["white"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["panel"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linewidth = 0.5),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["white"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["yellow"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["charcoal"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["cobalt"]], colour = NA),
      # yellow body, green play button, and beige buttons for discrete
      # fills and colours
      palette.fill.discrete = unname(cols[c("yellow", "green", "beige", "sky")]),
      palette.colour.discrete = unname(cols[c("yellow", "green", "beige", "sky")]),
      # yellow fills with charcoal (button pad) lines by default
      geom = ggplot2::element_geom(ink = cols[["charcoal"]],
                                   paper = cols[["panel"]],
                                   accent = cols[["green"]],
                                   colour = cols[["charcoal"]],
                                   fill = cols[["yellow"]],
                                   family = base_family)
    )
}

walkman_cols <- c(
  cobalt = "#0276BB",
  panel = "#036AA9",
  grid = "#7FB6DD",
  yellow = "#FBC803",
  charcoal = "#1A1A1C",
  green = "#4EC375",
  sky = "#0498BF",
  beige = "#DFD1AA",
  white = "#FFFFFF"
)
