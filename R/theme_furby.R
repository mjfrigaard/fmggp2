#' Furby theme
#'
#' A late 90s `ggplot2` theme modeled on the Sherbet Furby: red fur, a beak
#' yellow frame, a pale blue belly plot area, and belly blue, beak yellow,
#' pink, and eye blue marks, and a Chalkboard SE title.
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
      palette.fill.discrete = unname(cols[c("blue", "beak", "pink", "eye")]),
      palette.colour.discrete = unname(cols[c("blue", "beak", "pink", "eye")]),
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
  fur = "#D61C42",
  belly = "#EEF6FD",
  grid = "#BFE0F8",
  ink = "#3D3541",
  blue = "#80C5F7",
  beak = "#E3B329",
  pink = "#F23971",
  eye = "#4E87A4",
  white = "#FFFFFF"
)
