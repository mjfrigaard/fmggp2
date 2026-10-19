#' Y2K theme
#'
#' A `ggplot2` theme built from the Y2K countdown: a black terminal
#' background, a red LED frame and title, red, amber, green, silver, and
#' blue screen marks, and a PT Mono title.
#'
#' Use `mode = "light"` for a light background with darker text and marks.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to PT Mono when
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
#'   labs(title = "Y2K") +
#'   theme_y2k(base_family = "sans", title_family = "sans")
theme_y2k <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("PT Mono", "PTMono.ttc"),
                      mode = c("dark", "light")) {
  mode <- match.arg(mode)
  cols <- y2k_cols[[mode]]
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["silver"]]),
      plot.background = ggplot2::element_rect(fill = cols[["black"]],
                                              colour = cols[["red"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family,
                                         colour = cols[["red"]],
                                         size = ggplot2::rel(1.4)),
      plot.subtitle = ggplot2::element_text(colour = cols[["silver"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["screen"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["silver"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["red"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["black"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["black"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = unname(cols[c("red", "amber", "green", "silver", "blue")]),
      palette.colour.discrete = unname(cols[c("red", "amber", "green", "silver", "blue")]),
      # default marks
      geom = ggplot2::element_geom(ink = cols[["silver"]],
                                   paper = cols[["screen"]],
                                   accent = cols[["amber"]],
                                   colour = cols[["black"]],
                                   fill = cols[["red"]],
                                   family = base_family)
    )
}

# LED countdown red, terminal amber and green, and the blue screen
y2k_cols <- list(
  dark = c(
    black = "#000000",
    screen = "#0C0C0C",
    grid = "#262626",
    silver = "#C8C8C8",
    red = "#FF2A2A",
    amber = "#FFB000",
    green = "#00E05A",
    blue = "#3D7BFF"
  ),
  # the light palette keeps the dark role names
  light = c(
    black = "#F6E8E8",
    screen = "#FFFAFA",
    grid = "#E4D3D3",
    silver = "#422323",
    red = "#D60000",
    amber = "#CA8000",
    green = "#00A800",
    blue = "#3D7BFF"
  )
)

