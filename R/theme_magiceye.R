#' Magic Eye theme
#'
#' A late 90s `ggplot2` theme modeled on a Magic Eye stereogram: a deep sea
#' blue background, a coral frame, a sky blue title, and coral, sky, sand,
#' and sea green marks, and a Skia title.
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
#'   labs(title = "Magic Eye") +
#'   theme_magiceye(base_family = "sans", title_family = "sans")
theme_magiceye <- function(base_size = 11,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Skia", "Skia.ttf")) {
  cols <- magiceye_cols
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["white"]]),
      plot.background = ggplot2::element_rect(fill = cols[["deep"]],
                                              colour = cols[["coral"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family,
                                         colour = cols[["sky"]],
                                         size = ggplot2::rel(1.4)),
      plot.subtitle = ggplot2::element_text(colour = cols[["white"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["panel"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["white"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["coral"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["deep"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["deep"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = unname(cols[c("coral", "sky", "sand", "sea")]),
      palette.colour.discrete = unname(cols[c("coral", "sky", "sand", "sea")]),
      # default marks
      geom = ggplot2::element_geom(ink = cols[["white"]],
                                   paper = cols[["panel"]],
                                   accent = cols[["sky"]],
                                   colour = cols[["white"]],
                                   fill = cols[["coral"]],
                                   family = base_family)
    )
}

magiceye_cols <- c(
  deep = "#1E4A5A",
  panel = "#245A6B",
  grid = "#3B7A8A",
  white = "#EAF4F6",
  coral = "#E48C6E",
  sky = "#6CBFDC",
  sand = "#DEBB75",
  sea = "#59B3B1"
)
