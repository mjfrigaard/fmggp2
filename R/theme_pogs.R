#' Pogs theme
#'
#' A late 90s `ggplot2` theme modeled on Pogs: a cardboard milk cap
#' background, a purple frame and title, orange, blue, purple, green, rust,
#' and tan prints, and a Bradley Hand title.
#'
#' @param base_size Base font size. Defaults to `11`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Bradley Hand when
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
#'   labs(title = "Pogs") +
#'   theme_pogs(base_family = "sans", title_family = "sans")
theme_pogs <- function(base_size = 11,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Bradley Hand", "Bradley Hand Bold.ttf")) {
  cols <- pogs_cols
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["ink"]]),
      plot.background = ggplot2::element_rect(fill = cols[["cardboard"]],
                                              colour = cols[["purple"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family,
                                         colour = cols[["purple"]],
                                         size = ggplot2::rel(1.4)),
      plot.subtitle = ggplot2::element_text(colour = cols[["ink"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["panel"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["ink"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["purple"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["cardboard"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["cardboard"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = unname(cols[c("orange", "blue", "purple", "green", "rust", "tan")]),
      palette.colour.discrete = unname(cols[c("orange", "blue", "purple", "green", "rust", "tan")]),
      # default marks
      geom = ggplot2::element_geom(ink = cols[["ink"]],
                                   paper = cols[["panel"]],
                                   accent = cols[["orange"]],
                                   colour = cols[["ink"]],
                                   fill = cols[["purple"]],
                                   family = base_family)
    )
}

pogs_cols <- c(
  cardboard = "#E9D8B4",
  panel = "#F6EDDA",
  grid = "#D8C49A",
  ink = "#3B2A14",
  purple = "#41358D",
  orange = "#F27137",
  blue = "#2E9DBB",
  green = "#2F7C39",
  rust = "#BF4423",
  tan = "#F1B969"
)
