#' Goosebumps theme
#'
#' A late 90s `ggplot2` theme modeled on the Goosebumps books: a black
#' background, a slime green frame and title, a dark purple plot area, slime
#' green, purple, pale green, orchid, and moss marks, and a Trattatello title.
#'
#' Use `mode = "light"` for a light background with darker text and marks.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Trattatello when
#'     it's available, otherwise `"sans"`.
#' @param mode `"dark"` (the default) or `"light"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Goosebumps") +
#'   theme_goosebumps(base_family = "sans", title_family = "sans")
theme_goosebumps <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Trattatello", "Trattatello.ttf"),
                      mode = c("dark", "light")) {
  mode <- match.arg(mode)
  cols <- goosebumps_cols[[mode]]
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["bone"]]),
      plot.background = ggplot2::element_rect(fill = cols[["night"]],
                                              colour = cols[["slime"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family,
                                         colour = cols[["slime"]],
                                         size = ggplot2::rel(1.4)),
      plot.subtitle = ggplot2::element_text(colour = cols[["bone"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["panel"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["bone"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["slime"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["night"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["night"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = unname(cols[c("slime", "purple", "pale", "orchid", "moss")]),
      palette.colour.discrete = unname(cols[c("slime", "purple", "pale", "orchid", "moss")]),
      # default marks
      geom = ggplot2::element_geom(ink = cols[["bone"]],
                                   paper = cols[["panel"]],
                                   accent = cols[["slime"]],
                                   colour = cols[["night"]],
                                   fill = cols[["slime"]],
                                   family = base_family)
    )
}

goosebumps_cols <- list(
  dark = c(
    night = "#040304",
    panel = "#2A1A2B",
    grid = "#492A48",
    slime = "#46A664",
    purple = "#965491",
    moss = "#22664E",
    pale = "#99C661",
    orchid = "#BD6CA7",
    bone = "#F2E8CF"
  ),
  # the light palette keeps the dark role names
  light = c(
    night = "#E2EEE5",
    panel = "#F8FCF8",
    grid = "#CDDBD0",
    slime = "#007A34",
    purple = "#965491",
    moss = "#22664E",
    pale = "#719D2B",
    orchid = "#BD6CA7",
    bone = "#0E331A"
  )
)
