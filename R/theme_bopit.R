#' Bop It theme
#'
#' A `ggplot2` theme built from the Bop It toy: a deep purple background,
#' a yellow frame and title, yellow, blue, green, orange, and pink marks,
#' a purple to yellow continuous scale, and a Rockwell title.
#'
#' Use `mode = "light"` for a light background with darker text and marks.
#'
#' @param base_size Base font size. Defaults to `11`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Rockwell when
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
#'   labs(title = "Bop It") +
#'   theme_bopit(base_family = "sans", title_family = "sans")
theme_bopit <- function(base_size = 11,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Rockwell", "Rockwell.ttc"),
                      mode = c("dark", "light")) {
  mode <- match.arg(mode)
  cols <- bopit_cols[[mode]]
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["cream"]]),
      plot.background = ggplot2::element_rect(fill = cols[["night"]],
                                              colour = cols[["yellow"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family,
                                         colour = cols[["yellow"]],
                                         size = ggplot2::rel(1.5)),
      plot.subtitle = ggplot2::element_text(colour = cols[["cream"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["panel"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["cream"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["yellow"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["night"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["night"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = unname(cols[c("yellow", "blue", "green", "orange", "pink")]),
      palette.colour.discrete = unname(cols[c("yellow", "blue", "green", "orange", "pink")]),
      # continuous fills and colours
      palette.fill.continuous = unname(cols[c("purple", "yellow")]),
      palette.colour.continuous = unname(cols[c("purple", "yellow")]),
      # default marks
      geom = ggplot2::element_geom(ink = cols[["cream"]],
                                   paper = cols[["panel"]],
                                   accent = cols[["orange"]],
                                   colour = cols[["yellow"]],
                                   fill = cols[["yellow"]],
                                   family = base_family)
    )
}

# the Bop It body and handles
bopit_cols <- list(
  dark = c(
    night = "#23123F",
    panel = "#2E1A52",
    grid = "#4A3473",
    cream = "#FFF6D6",
    purple = "#5B2A9A",
    yellow = "#FFD400",
    blue = "#1E90FF",
    green = "#3CB043",
    orange = "#FF8C00",
    pink = "#FF5FA2"
  ),
  # the light palette keeps the dark role names
  light = c(
    night = "#EDE8FB",
    panel = "#FBFAFF",
    grid = "#DAD4E9",
    cream = "#302743",
    purple = "#5B2A9A",
    yellow = "#866300",
    blue = "#1E90FF",
    green = "#2CA534",
    orange = "#E07200",
    pink = "#F6569A"
  )
)

