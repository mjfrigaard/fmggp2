#' Jurassic Park theme
#'
#' A late 90s `ggplot2` theme modeled on the Jurassic Park (1993) Post Office
#' souvenir stamp sheet: a black sheet with a logo red frame, a dark jungle
#' plot area, stamp yellow titles, red, yellow, sunset orange, cream, and tan
#' marks, and a Herculanum title.
#'
#' Use `mode = "light"` for a light background with darker text and marks.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Herculanum when
#'     it's available on the system, otherwise `"sans"`.
#' @param mode `"dark"` (the default) or `"light"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b"), y = c(3, 5)), aes(x = x, y = y)) +
#'   geom_col() +
#'   labs(title = "Jurassic Park") +
#'   theme_jurassic(base_family = "sans", title_family = "sans")
theme_jurassic <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Herculanum", "Herculanum.ttf"),
                      mode = c("dark", "light")) {
  mode <- match.arg(mode)
  cols <- jurassic_cols[[mode]]
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["cream"]]),
      plot.background = ggplot2::element_rect(fill = cols[["black"]],
                                              colour = cols[["red"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family,
                                         colour = cols[["yellow"]],
                                         size = ggplot2::rel(1.4)),
      plot.subtitle = ggplot2::element_text(colour = cols[["cream"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["panel"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["cream"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["red"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["black"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["black"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = unname(cols[c("red", "yellow", "orange", "cream", "tan")]),
      palette.colour.discrete = unname(cols[c("red", "yellow", "orange", "cream", "tan")]),
      # default marks
      geom = ggplot2::element_geom(ink = cols[["cream"]],
                                   paper = cols[["panel"]],
                                   accent = cols[["yellow"]],
                                   colour = cols[["black"]],
                                   fill = cols[["red"]],
                                   family = base_family)
    )
}

jurassic_cols <- list(
  dark = c(
    black = "#101011",
    panel = "#1F1A17",
    grid = "#431F14",
    red = "#B3142A",
    yellow = "#F2D900",
    orange = "#C38F32",
    cream = "#F2E7D8",
    tan = "#D0BC94"
  ),
  # the light palette keeps the dark role names
  light = c(
    black = "#EEEBE1",
    panel = "#FCFBF7",
    grid = "#DAD7CC",
    red = "#B3142A",
    yellow = "#7C6700",
    orange = "#BB8724",
    cream = "#322C07",
    tan = "#A28F65"
  )
)
