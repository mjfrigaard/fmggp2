#' Saved by the Bell theme
#'
#' A `ggplot2` theme built from the Saved by the Bell opening credits: a
#' black background with a hot pink frame, a white classroom panel, teal,
#' magenta, yellow, purple, red, and blue Memphis style marks, and a
#' SignPainter title.
#'
#' @param base_size Base font size. Defaults to `11`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to SignPainter when
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
#'   labs(title = "Saved by the Bell") +
#'   theme_savedbythebell(base_family = "sans", title_family = "sans")
theme_savedbythebell <- function(base_size = 11,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("SignPainter", "SignPainter.ttc")) {
  cols <- savedbythebell_cols
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["chalk"]]),
      plot.background = ggplot2::element_rect(fill = cols[["black"]],
                                              colour = cols[["magenta"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family,
                                         colour = cols[["yellow"]],
                                         size = ggplot2::rel(1.8)),
      plot.subtitle = ggplot2::element_text(colour = cols[["chalk"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["white"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["chalk"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["teal"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["white"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["black"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = unname(cols[c("teal", "magenta", "yellow", "purple", "red", "blue")]),
      palette.colour.discrete = unname(cols[c("teal", "magenta", "yellow", "purple", "red", "blue")]),
      # default marks
      geom = ggplot2::element_geom(ink = cols[["chalk"]],
                                   paper = cols[["white"]],
                                   accent = cols[["magenta"]],
                                   colour = cols[["black"]],
                                   fill = cols[["teal"]],
                                   family = base_family)
    )
}

# the Memphis design colors from the opening credits
savedbythebell_cols <- c(
  black = "#141414",
  white = "#FFFFFF",
  grid = "#E6E6E6",
  chalk = "#F5F5F5",
  teal = "#00A6A6",
  magenta = "#E5097F",
  yellow = "#FFC20E",
  purple = "#6A2C91",
  red = "#E4002B",
  blue = "#2B6CB0"
)

