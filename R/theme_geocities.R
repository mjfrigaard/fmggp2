#' GeoCities theme
#'
#' A `ggplot2` theme built from a GeoCities home page: a black background,
#' a web gray frame, a dark navy panel, lime green text, a yellow Comic
#' Sans title, web safe marks, and a blue to yellow continuous scale.
#'
#' Use `mode = "light"` for a light background with darker text and marks.
#'
#' @param base_size Base font size. Defaults to `11`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Comic Sans MS when
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
#'   labs(title = "GeoCities") +
#'   theme_geocities(base_family = "sans", title_family = "sans")
theme_geocities <- function(base_size = 11,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Comic Sans MS", "Comic Sans MS Bold.ttf"),
                      mode = c("dark", "light")) {
  mode <- match.arg(mode)
  cols <- geocities_cols[[mode]]
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["lime"]]),
      plot.background = ggplot2::element_rect(fill = cols[["black"]],
                                              colour = cols[["webgray"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family,
                                         colour = cols[["yellow"]],
                                         size = ggplot2::rel(1.4)),
      plot.subtitle = ggplot2::element_text(colour = cols[["lime"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["navy"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["lime"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["webgray"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["black"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["black"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = unname(cols[c("lime", "yellow", "cyan", "magenta", "red", "link")]),
      palette.colour.discrete = unname(cols[c("lime", "yellow", "cyan", "magenta", "red", "link")]),
      # continuous fills and colours
      palette.fill.continuous = unname(cols[c("link", "yellow")]),
      palette.colour.continuous = unname(cols[c("link", "yellow")]),
      # default marks
      geom = ggplot2::element_geom(ink = cols[["lime"]],
                                   paper = cols[["navy"]],
                                   accent = cols[["magenta"]],
                                   colour = cols[["lime"]],
                                   fill = cols[["lime"]],
                                   family = base_family)
    )
}

# web safe colors and the visitor counter
geocities_cols <- list(
  dark = c(
    black = "#000000",
    navy = "#000033",
    grid = "#1A1A4D",
    webgray = "#C0C0C0",
    lime = "#00FF00",
    yellow = "#FFFF00",
    cyan = "#00FFFF",
    magenta = "#FF00FF",
    red = "#FF3333",
    link = "#3366FF"
  ),
  # the light palette keeps the dark role names
  light = c(
    black = "#ECECE1",
    navy = "#FBFBF7",
    grid = "#D8D8CB",
    webgray = "#6A6A6A",
    lime = "#005B00",
    yellow = "#6D6D00",
    cyan = "#00A2A2",
    magenta = "#FF00FF",
    red = "#FF3333",
    link = "#3366FF"
  )
)

