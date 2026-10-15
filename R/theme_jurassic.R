#' Jurassic Park theme
#'
#' A late 90s `ggplot2` theme modeled on Jurassic Park (1993): a black
#' park gate frame, jungle green plot area, logo red and amber marks, and a
#' Herculanum title.
#'
#' @param base_size Base font size. Defaults to `11`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Herculanum when
#'     it's available on the system, otherwise `"sans"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b"), y = c(3, 5)), aes(x = x, y = y)) +
#'   geom_col() +
#'   labs(title = "Jurassic Park") +
#'   theme_jurassic(base_family = "sans", title_family = "sans")
theme_jurassic <- function(base_size = 11,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Herculanum", "Herculanum.ttf")) {
  cols <- jurassic_cols
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["bone"]]),
      plot.background = ggplot2::element_rect(fill = cols[["black"]],
                                              colour = cols[["red"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family,
                                         colour = cols[["amber"]],
                                         size = ggplot2::rel(1.4)),
      plot.subtitle = ggplot2::element_text(colour = cols[["bone"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["jungle"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["bone"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["red"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["black"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["black"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = unname(cols[c("red", "amber", "leaf", "bone", "mud")]),
      palette.colour.discrete = unname(cols[c("red", "amber", "leaf", "bone", "mud")]),
      # default marks
      geom = ggplot2::element_geom(ink = cols[["bone"]],
                                   paper = cols[["jungle"]],
                                   accent = cols[["amber"]],
                                   colour = cols[["amber"]],
                                   fill = cols[["red"]],
                                   family = base_family)
    )
}

jurassic_cols <- c(
  black = "#111111",
  jungle = "#1E2B1E",
  grid = "#36503A",
  red = "#D7261E",
  amber = "#FFB000",
  leaf = "#6BA34A",
  bone = "#F2E8CF",
  mud = "#8C6D46"
)
