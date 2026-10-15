#' Fresh Prince theme
#'
#' A late 90s `ggplot2` theme modeled on The Fresh Prince of Bel-Air opening:
#' deep purple background, graffiti neon green, pink, teal, and yellow, and an
#' Arial Black title. Continuous fills run from teal to hot pink.
#'
#' @param base_size Base font size. Defaults to `11`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Arial Black when
#'     it's available on the system, otherwise `"sans"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(expand.grid(x = 1:3, y = 1:3), aes(x = x, y = y, fill = x * y)) +
#'   geom_tile() +
#'   labs(title = "Fresh Prince") +
#'   theme_freshprince(base_family = "sans", title_family = "sans")
theme_freshprince <- function(base_size = 11,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Arial Black", "Arial Black.ttf")) {
  cols <- freshprince_cols
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["white"]]),
      plot.background = ggplot2::element_rect(fill = cols[["purple"]],
                                              colour = cols[["pink"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family,
                                         colour = cols[["green"]],
                                         size = ggplot2::rel(1.4)),
      plot.subtitle = ggplot2::element_text(colour = cols[["yellow"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["panel"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["white"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["pink"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["purple"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["purple"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = unname(cols[c("pink", "teal", "yellow", "green")]),
      palette.colour.discrete = unname(cols[c("pink", "teal", "yellow", "green")]),
      # teal to hot pink for continuous fills
      palette.fill.continuous = unname(cols[c("teal", "pink")]),
      # default marks
      geom = ggplot2::element_geom(ink = cols[["white"]],
                                   paper = cols[["panel"]],
                                   accent = cols[["pink"]],
                                   colour = cols[["green"]],
                                   fill = cols[["pink"]],
                                   family = base_family)
    )
}

freshprince_cols <- c(
  purple = "#2B0F3A",
  panel = "#3D1652",
  grid = "#5A2A73",
  green = "#7CFF4F",
  pink = "#FF3EA5",
  teal = "#16D1C4",
  yellow = "#FFE14D",
  white = "#FFFFFF"
)
