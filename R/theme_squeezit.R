#' Squeezit theme
#'
#' A `ggplot2` theme built from Squeezit drink bottles on gravel: a gravel
#' background, a red frame and title, red, orange, green, pink, blue, and gold
#' bottle marks, and a Skia title.
#'
#' @param base_size Base font size. Defaults to `11`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Skia when
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
#'   labs(title = "Squeezit") +
#'   theme_squeezit(base_family = "sans", title_family = "sans")
theme_squeezit <- function(base_size = 11,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Skia", "Skia.ttf")) {
  cols <- squeezit_cols
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["ink"]]),
      plot.background = ggplot2::element_rect(fill = cols[["gravel"]],
                                              colour = cols[["red"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family, face = "bold",
                                         colour = cols[["red"]],
                                         size = ggplot2::rel(1.5)),
      plot.subtitle = ggplot2::element_text(colour = cols[["ink"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["panel"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["ink"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["ink"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["panel"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["gravel"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = unname(cols[c("red", "orange", "green", "pink", "blue", "gold")]),
      palette.colour.discrete = unname(cols[c("red", "orange", "green", "pink", "blue", "gold")]),
      # default marks
      geom = ggplot2::element_geom(ink = cols[["ink"]],
                                   paper = cols[["panel"]],
                                   accent = cols[["blue"]],
                                   colour = cols[["ink"]],
                                   fill = cols[["red"]],
                                   family = base_family)
    )
}

# Squeezit bottles standing in gravel
squeezit_cols <- c(
  gravel = "#C1BCB5",
  panel = "#E4E0DA",
  grid = "#AAA094",
  ink = "#43332D",
  red = "#B21527",
  orange = "#BB5E03",
  green = "#297819",
  pink = "#D36165",
  blue = "#4B9ACB",
  gold = "#BE974F"
)
