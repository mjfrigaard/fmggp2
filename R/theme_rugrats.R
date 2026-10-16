#' Rugrats theme
#'
#' A `ggplot2` theme built from Rugrats: a pale yellow playpen background,
#' an orange frame, a purple Marker Felt title, and Tommy blue, Angelica
#' pink, Reptar green, orange, purple, red, teal, and yellow marks.
#'
#' @param base_size Base font size. Defaults to `11`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Marker Felt when
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
#'   labs(title = "Rugrats") +
#'   theme_rugrats(base_family = "sans", title_family = "sans")
theme_rugrats <- function(base_size = 11,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Marker Felt", "MarkerFelt.ttc",
                                                  dir = "/System/Library/Fonts")) {
  cols <- rugrats_cols
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["ink"]]),
      plot.background = ggplot2::element_rect(fill = cols[["playpen"]],
                                              colour = cols[["orange"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family,
                                         colour = cols[["purple"]],
                                         size = ggplot2::rel(1.6)),
      plot.subtitle = ggplot2::element_text(colour = cols[["ink"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["white"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["ink"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["purple"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["white"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["playpen"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = unname(cols[c("blue", "pink", "green", "orange", "purple", "red", "teal", "yellow")]),
      palette.colour.discrete = unname(cols[c("blue", "pink", "green", "orange", "purple", "red", "teal", "yellow")]),
      # default marks
      geom = ggplot2::element_geom(ink = cols[["ink"]],
                                   paper = cols[["white"]],
                                   accent = cols[["green"]],
                                   colour = cols[["purple"]],
                                   fill = cols[["orange"]],
                                   family = base_family)
    )
}

# the Rugrats logo and the babies' clothes
rugrats_cols <- c(
  playpen = "#FFF3C4",
  white = "#FFFFFF",
  grid = "#F1E6BF",
  ink = "#3B2A1A",
  blue = "#3D9BE9",
  pink = "#FF5DA8",
  green = "#43A047",
  orange = "#F7941D",
  purple = "#7B3FA0",
  red = "#E53935",
  teal = "#17A589",
  yellow = "#F9C80E"
)

