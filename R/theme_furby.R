#' Furby theme
#'
#' A late 90s `ggplot2` theme modeled on a 1998 Furby: deep teal fur, a beak
#' yellow frame, a gray belly plot area, teal, pink, beak yellow, wall green,
#' and gray marks, and a Chalkboard SE title.
#'
#' @param base_size Base font size. Defaults to `11`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Chalkboard SE when
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
#'   labs(title = "Furby") +
#'   theme_furby(base_family = "sans", title_family = "sans")
theme_furby <- function(base_size = 11,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Chalkboard SE", "ChalkboardSE.ttc")) {
  cols <- furby_cols
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["white"]]),
      plot.background = ggplot2::element_rect(fill = cols[["fur"]],
                                              colour = cols[["beak"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family,
                                         colour = cols[["white"]],
                                         size = ggplot2::rel(1.4)),
      plot.subtitle = ggplot2::element_text(colour = cols[["white"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["belly"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["white"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["beak"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["fur"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["fur"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = unname(cols[c("blue", "pink", "beak", "wall", "gray")]),
      palette.colour.discrete = unname(cols[c("blue", "pink", "beak", "wall", "gray")]),
      # default marks
      geom = ggplot2::element_geom(ink = cols[["ink"]],
                                   paper = cols[["belly"]],
                                   accent = cols[["beak"]],
                                   colour = cols[["ink"]],
                                   fill = cols[["blue"]],
                                   family = base_family)
    )
}

furby_cols <- c(
  fur = "#126378",
  belly = "#EFEBE7",
  grid = "#D3CAC2",
  ink = "#23182B",
  blue = "#26AACD",
  pink = "#EE7175",
  beak = "#FFDD44",
  wall = "#87A55D",
  gray = "#AC9E92",
  white = "#FFFFFF"
)
