#' MTV TRL theme
#'
#' A late 90s `ggplot2` theme modeled on MTV's Total Request Live: a black
#' studio, MTV yellow and hot red, Times Square neon marks, and an Impact
#' title.
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
#'   labs(title = "MTV TRL") +
#'   theme_trl(base_family = "sans", title_family = "sans")
theme_trl <- function(base_size = 11,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Impact", "Impact.ttf")) {
  cols <- trl_cols
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["white"]]),
      plot.background = ggplot2::element_rect(fill = cols[["black"]],
                                              colour = cols[["yellow"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family,
                                         colour = cols[["yellow"]],
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
      strip.background = ggplot2::element_rect(fill = cols[["yellow"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["black"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["black"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = unname(cols[c("red", "cyan", "magenta", "green", "orange", "yellow")]),
      palette.colour.discrete = unname(cols[c("red", "cyan", "magenta", "green", "orange", "yellow")]),
      # default marks
      geom = ggplot2::element_geom(ink = cols[["white"]],
                                   paper = cols[["panel"]],
                                   accent = cols[["yellow"]],
                                   colour = cols[["white"]],
                                   fill = cols[["red"]],
                                   family = base_family)
    )
}

trl_cols <- c(
  black = "#111111",
  panel = "#1E1E1E",
  grid = "#333333",
  white = "#F5F5F5",
  yellow = "#FFE600",
  red = "#FF1744",
  cyan = "#00E5FF",
  magenta = "#E040FB",
  green = "#76FF03",
  orange = "#FF9100"
)
