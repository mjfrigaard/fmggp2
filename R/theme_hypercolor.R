#' Hypercolor theme
#'
#' A `ggplot2` theme built from Generra Hypercolor shirts: a deep purple
#' background, a magenta frame, heat changing magenta, orange, purple,
#' blue, green, and yellow marks, and a Gill Sans title.
#'
#' Use `mode = "light"` for a light background with darker text and marks.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Gill Sans when
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
#'   labs(title = "Hypercolor") +
#'   theme_hypercolor(base_family = "sans", title_family = "sans")
theme_hypercolor <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Gill Sans", "GillSans.ttc"),
                      mode = c("dark", "light")) {
  mode <- match.arg(mode)
  cols <- hypercolor_cols[[mode]]
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["white"]]),
      plot.background = ggplot2::element_rect(fill = cols[["plum"]],
                                              colour = cols[["magenta"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family,
                                         colour = cols[["yellow"]],
                                         size = ggplot2::rel(1.5)),
      plot.subtitle = ggplot2::element_text(colour = cols[["white"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["shirt"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["white"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["magenta"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["strip"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["plum"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = unname(cols[c("magenta", "orange", "purple", "blue", "green", "yellow")]),
      palette.colour.discrete = unname(cols[c("magenta", "orange", "purple", "blue", "green", "yellow")]),
      # default marks
      geom = ggplot2::element_geom(ink = cols[["white"]],
                                   paper = cols[["shirt"]],
                                   accent = cols[["orange"]],
                                   colour = cols[["white"]],
                                   fill = cols[["magenta"]],
                                   family = base_family)
    )
}

# cool and warm Hypercolor pairs (magenta to orange, purple to blue, green to yellow)
hypercolor_cols <- list(
  dark = c(
    plum = "#2A0A3D",
    shirt = "#3A1552",
    grid = "#5A2D75",
    white = "#FDF6FF",
    magenta = "#E0218A",
    orange = "#FF8C1A",
    purple = "#8E4BE0",
    blue = "#1F9BFF",
    green = "#2DBE60",
    yellow = "#FFE135",
    strip = "#FDF6FF"
  ),
  # the light palette keeps the dark role names
  light = c(
    plum = "#F0E8FA",
    shirt = "#FDFAFF",
    grid = "#DDD3E8",
    white = "#352642",
    magenta = "#CC0079",
    orange = "#E37400",
    purple = "#8E4BE0",
    blue = "#0296FA",
    green = "#00A848",
    yellow = "#806700",
    strip = "#FDFAFF"
  )
)

