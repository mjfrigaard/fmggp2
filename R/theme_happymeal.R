#' Happy Meal theme
#'
#' A late 90s `ggplot2` theme modeled on a McDonald's Happy Meal box: red
#' box, golden yellow marks, a cream plot area, and an Arial Rounded title.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Arial Rounded when
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
#'   labs(title = "Happy Meal") +
#'   theme_happymeal(base_family = "sans", title_family = "sans")
theme_happymeal <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Arial Rounded", "Arial Rounded Bold.ttf")) {
  cols <- happymeal_cols
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["white"]]),
      plot.background = ggplot2::element_rect(fill = cols[["red"]],
                                              colour = cols[["yellow"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family,
                                         colour = cols[["yellow"]],
                                         size = ggplot2::rel(1.4)),
      plot.subtitle = ggplot2::element_text(colour = cols[["white"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["cream"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["blush"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["white"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["yellow"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["red"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["red"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = unname(cols[c("yellow", "brown", "orange", "green")]),
      palette.colour.discrete = unname(cols[c("yellow", "brown", "orange", "green")]),
      # default marks
      geom = ggplot2::element_geom(ink = cols[["brown"]],
                                   paper = cols[["cream"]],
                                   accent = cols[["red"]],
                                   colour = cols[["red"]],
                                   fill = cols[["yellow"]],
                                   family = base_family)
    )
}

happymeal_cols <- c(
  red = "#A0372B",
  yellow = "#E5C049",
  cream = "#FFF7E0",
  brown = "#631D19",
  blush = "#F6D7A7",
  orange = "#F7941D",
  green = "#2E8B57",
  white = "#FFFFFF"
)
