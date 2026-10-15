#' Tetris theme
#'
#' A late 90s `ggplot2` theme modeled on Tetris: a black well, the seven
#' tetromino colors as marks, and the pixel font Press Start 2P (bundled with
#' the package) for the title.
#'
#' @param base_size Base font size. Defaults to `11`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Press Start 2P when
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
#'   labs(title = "Tetris") +
#'   theme_tetris(base_family = "sans", title_family = "sans")
theme_tetris <- function(base_size = 11,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = gameboy_font()) {
  cols <- tetris_cols
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["white"]]),
      plot.background = ggplot2::element_rect(fill = cols[["black"]],
                                              colour = cols[["cyan"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family,
                                         colour = cols[["yellow"]],
                                         size = ggplot2::rel(0.9)),
      plot.subtitle = ggplot2::element_text(colour = cols[["white"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["panel"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["white"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["cyan"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["black"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["black"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = unname(cols[c("cyan", "yellow", "purple", "green", "red", "blue", "orange")]),
      palette.colour.discrete = unname(cols[c("cyan", "yellow", "purple", "green", "red", "blue", "orange")]),
      # default marks
      geom = ggplot2::element_geom(ink = cols[["white"]],
                                   paper = cols[["panel"]],
                                   accent = cols[["cyan"]],
                                   colour = cols[["black"]],
                                   fill = cols[["cyan"]],
                                   family = base_family)
    )
}

tetris_cols <- c(
  black = "#0B0B0B",
  panel = "#141414",
  grid = "#2A2A2A",
  white = "#F5F5F5",
  cyan = "#00F0F0",
  yellow = "#F0F000",
  purple = "#A000F0",
  green = "#00F000",
  red = "#F00000",
  blue = "#0050F0",
  orange = "#F0A000"
)
