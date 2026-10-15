#' Lisa Frank theme
#'
#' A late 90s `ggplot2` theme modeled on a Lisa Frank folder: a purple
#' background with a yellow frame and title, a white plot area, magenta,
#' orange, yellow, and purple marks, and a Chalkboard title.
#'
#' @param base_size Base font size. Defaults to `11`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Chalkboard when
#'     it's available on the system, otherwise `"sans"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Lisa Frank") +
#'   theme_lisafrank(base_family = "sans", title_family = "sans")
theme_lisafrank <- function(base_size = 11,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Chalkboard", "Chalkboard.ttc")) {
  cols <- lisafrank_cols
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["white"]]),
      plot.background = ggplot2::element_rect(fill = cols[["purple"]],
                                              colour = cols[["yellow"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family,
                                         colour = cols[["yellow"]],
                                         size = ggplot2::rel(1.4)),
      plot.subtitle = ggplot2::element_text(colour = cols[["white"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["white"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["white"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["yellow"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["ink"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      # white keys so the purple key stands out on the purple background
      legend.key = ggplot2::element_rect(fill = cols[["white"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = unname(cols[c("magenta", "orange", "yellow", "purple")]),
      palette.colour.discrete = unname(cols[c("magenta", "orange", "yellow", "purple")]),
      # default marks
      geom = ggplot2::element_geom(ink = cols[["ink"]],
                                   paper = cols[["white"]],
                                   accent = cols[["magenta"]],
                                   colour = cols[["white"]],
                                   fill = cols[["magenta"]],
                                   family = base_family)
    )
}

lisafrank_cols <- c(
  purple = "#AC3CFE",
  magenta = "#F53FE8",
  orange = "#FFB622",
  yellow = "#FFFD42",
  white = "#FFFFFF",
  grid = "#EEDCFF",
  ink = "#3D0066"
)
