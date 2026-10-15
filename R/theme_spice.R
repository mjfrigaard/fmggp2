#' Spice Girls theme
#'
#' A late 90s `ggplot2` theme modeled on Spice Girls era pop: pale pink
#' background, hot pink titles, purple marks, gold accents, and Trebuchet MS
#' text.
#'
#' @param base_size Base font size. Defaults to `11`.
#' @param base_family Base font family. Defaults to Trebuchet MS when it's
#'     available on the system, otherwise `"sans"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c(rnorm(60, 11, 2), rnorm(40, 37, 6))), aes(x = x)) +
#'   geom_density() +
#'   labs(title = "Spice World") +
#'   theme_spice(base_family = "sans")
theme_spice <- function(base_size = 11,
                        base_family = register_font("Trebuchet MS",
                                                    "Trebuchet MS.ttf",
                                                    "Trebuchet MS Bold.ttf")) {
  cols <- spice_cols
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["plum"]]),
      plot.background = ggplot2::element_rect(fill = cols[["blush"]],
                                              colour = cols[["pink"]],
                                              linewidth = base_size / 3),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(face = "bold", colour = cols[["pink"]],
                                         size = ggplot2::rel(1.3)),
      plot.subtitle = ggplot2::element_text(colour = cols[["purple"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["white"]]),
      panel.border = ggplot2::element_rect(colour = cols[["gold"]],
                                           fill = NA, linewidth = 1),
      panel.grid.major = ggplot2::element_line(colour = cols[["lilac"]],
                                               linetype = "dashed",
                                               linewidth = 0.3),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["plum"]]),
      axis.ticks = ggplot2::element_blank(),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["blush"]], colour = NA),
      # purple, pink, then gold for discrete fills and colours
      palette.fill.discrete = unname(cols[c("purple", "pink", "gold")]),
      palette.colour.discrete = unname(cols[c("purple", "pink", "gold")]),
      # purple marks by default
      geom = ggplot2::element_geom(ink = cols[["plum"]],
                                   paper = cols[["white"]],
                                   accent = cols[["pink"]],
                                   colour = cols[["purple"]],
                                   fill = cols[["purple"]],
                                   family = base_family)
    )
}

spice_cols <- c(
  blush = "#FFE4F1",
  pink = "#FF1493",
  purple = "#7B2CBF",
  lilac = "#E0C3FC",
  plum = "#3C1053",
  gold = "#D4A017",
  white = "#FFFFFF"
)
