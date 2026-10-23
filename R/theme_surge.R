#' Surge theme
#'
#' A `ggplot2` theme built from Surge soda: a black background, a Surge
#' green frame and title, green, red, orange, yellow, and white marks, a
#' dark to bright green continuous scale, and a DIN Alternate title.
#'
#' Use `mode = "light"` for a light background with darker text and marks.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to DIN Alternate when
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
#'   labs(title = "Surge") +
#'   theme_surge(base_family = "sans", title_family = "sans")
theme_surge <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("DIN Alternate", "DIN Alternate Bold.ttf"),
                      mode = c("dark", "light")) {
  mode <- match.arg(mode)
  cols <- surge_cols[[mode]]
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["fizz"]]),
      plot.background = ggplot2::element_rect(fill = cols[["black"]],
                                              colour = cols[["green"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family,
                                         colour = cols[["green"]],
                                         size = ggplot2::rel(1.5)),
      plot.subtitle = ggplot2::element_text(colour = cols[["fizz"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["can"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["fizz"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["green"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["black"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["black"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = unname(cols[c("green", "red", "orange", "yellow", "fizz")]),
      palette.colour.discrete = unname(cols[c("green", "red", "orange", "yellow", "fizz")]),
      # continuous fills and colours
      palette.fill.continuous = unname(cols[c("dark", "bright")]),
      palette.colour.continuous = unname(cols[c("dark", "bright")]),
      # default marks
      geom = ggplot2::element_geom(ink = cols[["fizz"]],
                                   paper = cols[["can"]],
                                   accent = cols[["red"]],
                                   colour = cols[["black"]],
                                   fill = cols[["green"]],
                                   family = base_family)
    )
}

# the Surge can green and red splash
surge_cols <- list(
  dark = c(
    black = "#000000",
    can = "#0D1A0D",
    grid = "#1F3A1F",
    fizz = "#E8FFE0",
    green = "#7ED321",
    red = "#E41E26",
    orange = "#FF7A00",
    yellow = "#FFE600",
    dark = "#1B5E20",
    bright = "#C8FF4D"
  ),
  # the light palette keeps the dark role names
  light = c(
    black = "#E6EDE2",
    can = "#F9FCF8",
    grid = "#D1DACD",
    fizz = "#1E3110",
    green = "#197A00",
    red = "#EA272E",
    orange = "#BB3F00",
    yellow = "#A89100",
    dark = "#1B5E20",
    bright = "#6CA000"
  )
)

