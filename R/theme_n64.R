#' Nintendo 64 theme
#'
#' A late 90s `ggplot2` theme modeled on the Nintendo 64: controller gray
#' background, charcoal frame, the red, green, blue, and yellow logo
#' colors, and an Arial Black title.
#'
#' @param base_size Base font size. Defaults to `11`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Arial Black when it's
#'     available on the system, otherwise `"sans"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = "", y = 45 + 2 * rt(200, df = 3)), aes(x = x, y = y)) +
#'   geom_boxplot() +
#'   labs(title = "Nintendo 64") +
#'   theme_n64(base_family = "sans", title_family = "sans")
theme_n64 <- function(base_size = 11,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Arial Black",
                                                   "Arial Black.ttf")) {
  cols <- n64_cols
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["charcoal"]]),
      plot.background = ggplot2::element_rect(fill = cols[["gray"]],
                                              colour = cols[["charcoal"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family,
                                         colour = cols[["red"]],
                                         size = ggplot2::rel(1.2)),
      plot.subtitle = ggplot2::element_text(colour = cols[["blue"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["white"]]),
      panel.border = ggplot2::element_rect(colour = cols[["charcoal"]],
                                           fill = NA, linewidth = 1),
      panel.grid.major = ggplot2::element_line(colour = cols[["gray"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["charcoal"]]),
      axis.ticks = ggplot2::element_blank(),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["gray"]], colour = NA),
      # the four logo colors for discrete fills and colours
      palette.fill.discrete = unname(cols[c("blue", "red", "green", "yellow")]),
      palette.colour.discrete = unname(cols[c("blue", "red", "green", "yellow")]),
      # blue fill with charcoal lines by default
      geom = ggplot2::element_geom(ink = cols[["charcoal"]],
                                   paper = cols[["white"]],
                                   accent = cols[["red"]],
                                   colour = cols[["charcoal"]],
                                   fill = cols[["blue"]],
                                   family = base_family)
    )
}

n64_cols <- c(
  gray = "#D3D3D3",
  charcoal = "#2B2B2B",
  red = "#E4000F",
  green = "#009E3C",
  blue = "#0047AB",
  yellow = "#FFC300",
  white = "#FFFFFF"
)
