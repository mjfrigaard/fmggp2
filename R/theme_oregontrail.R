#' Oregon Trail theme
#'
#' A late 90s `ggplot2` theme modeled on The Oregon Trail on an Apple II
#' emulator: a gray window frame, a black screen, phosphor green text and
#' marks in three shades, and an Andale Mono title.
#'
#' @param base_size Base font size. Defaults to `11`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Andale Mono when
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
#'   labs(title = "Oregon Trail") +
#'   theme_oregontrail(base_family = "sans", title_family = "sans")
theme_oregontrail <- function(base_size = 11,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Andale Mono", "Andale Mono.ttf")) {
  cols <- oregontrail_cols
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["green"]]),
      plot.background = ggplot2::element_rect(fill = cols[["black"]],
                                              colour = cols[["window"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family,
                                         colour = cols[["green"]],
                                         size = ggplot2::rel(1.4)),
      plot.subtitle = ggplot2::element_text(colour = cols[["green"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["panel"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["green"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["green"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["black"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["black"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = unname(cols[c("green", "mid", "pale")]),
      palette.colour.discrete = unname(cols[c("green", "mid", "pale")]),
      # default marks
      geom = ggplot2::element_geom(ink = cols[["green"]],
                                   paper = cols[["panel"]],
                                   accent = cols[["mid"]],
                                   colour = cols[["green"]],
                                   fill = cols[["dim"]],
                                   family = base_family)
    )
}

oregontrail_cols <- c(
  black = "#010201",
  panel = "#143913",
  grid = "#1D5E1D",
  green = "#32FE33",
  mid = "#33A233",
  pale = "#4CDF4C",
  dim = "#278027",
  window = "#B9B9B9"
)
