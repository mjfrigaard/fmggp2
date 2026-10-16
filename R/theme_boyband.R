#' Boy band theme
#'
#' A `ggplot2` theme built from late 90s boy band album covers: a midnight
#' navy background, a chrome silver frame, ice blue, hot pink, gold,
#' lavender, and mint marks, and a Silom title.
#'
#' @param base_size Base font size. Defaults to `11`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Silom when
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
#'   labs(title = "Boy band") +
#'   theme_boyband(base_family = "sans", title_family = "sans")
theme_boyband <- function(base_size = 11,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Silom", "Silom.ttf")) {
  cols <- boyband_cols
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["frost"]]),
      plot.background = ggplot2::element_rect(fill = cols[["navy"]],
                                              colour = cols[["chrome"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family,
                                         colour = cols[["ice"]],
                                         size = ggplot2::rel(1.4)),
      plot.subtitle = ggplot2::element_text(colour = cols[["frost"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["stage"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["frost"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["chrome"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["navy"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["navy"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = unname(cols[c("ice", "pink", "gold", "lavender", "mint", "chrome")]),
      palette.colour.discrete = unname(cols[c("ice", "pink", "gold", "lavender", "mint", "chrome")]),
      # default marks
      geom = ggplot2::element_geom(ink = cols[["frost"]],
                                   paper = cols[["stage"]],
                                   accent = cols[["pink"]],
                                   colour = cols[["ice"]],
                                   fill = cols[["ice"]],
                                   family = base_family)
    )
}

# midnight navy, chrome, and frosted tip colors
boyband_cols <- c(
  navy = "#0B1A3A",
  stage = "#13254F",
  grid = "#2A3F70",
  chrome = "#C0C7D1",
  frost = "#E6ECF5",
  ice = "#8FD3FF",
  pink = "#FF4FA3",
  gold = "#F2C14E",
  lavender = "#B79CFF",
  mint = "#6FE3C1"
)

