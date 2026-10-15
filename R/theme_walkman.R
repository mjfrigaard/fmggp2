#' Sony Walkman theme
#'
#' A late 90s `ggplot2` theme modeled on a Sony Walkman Sports: brushed
#' silver body, a black tape window, sports yellow and orange marks, and a
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
      text = ggplot2::element_text(colour = cols[["ink"]]),
      plot.background = ggplot2::element_rect(fill = cols[["silver"]],
                                              colour = cols[["black"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family,
                                         colour = cols[["black"]],
                                         size = ggplot2::rel(1.4)),
      plot.subtitle = ggplot2::element_text(colour = cols[["ink"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["black"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["ink"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["black"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["silver"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["silver"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = unname(cols[c("yellow", "orange", "white")]),
      palette.colour.discrete = unname(cols[c("yellow", "orange", "white")]),
      # default marks
      geom = ggplot2::element_geom(ink = cols[["white"]],
                                   paper = cols[["black"]],
                                   accent = cols[["orange"]],
                                   colour = cols[["white"]],
                                   fill = cols[["yellow"]],
                                   family = base_family)
    )
}

walkman_cols <- c(
  silver = "#C9CDD2",
  black = "#1A1A1A",
  grid = "#3A3A3A",
  yellow = "#F5C400",
  orange = "#FF7A00",
  white = "#F2F2F2",
  ink = "#111111"
)
