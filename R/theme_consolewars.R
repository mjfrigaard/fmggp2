#' Console wars theme
#'
#' A `ggplot2` theme built from the Sega vs. Nintendo console wars: a
#' charcoal background, a Sega blue frame, a Nintendo red title, Sega
#' blue, Nintendo red, Super Nintendo purple, gray, and gold marks, and a
#' Krungthep title.
#'
#' Use `mode = "light"` for a light background with darker text and marks.
#'
#' @param base_size Base font size. Defaults to `11`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Krungthep when
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
#'   labs(title = "Console wars") +
#'   theme_consolewars(base_family = "sans", title_family = "sans")
theme_consolewars <- function(base_size = 11,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Krungthep", "Krungthep.ttf"),
                      mode = c("dark", "light")) {
  mode <- match.arg(mode)
  cols <- consolewars_cols[[mode]]
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["white"]]),
      plot.background = ggplot2::element_rect(fill = cols[["charcoal"]],
                                              colour = cols[["sega"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family,
                                         colour = cols[["nintendo"]],
                                         size = ggplot2::rel(1.4)),
      plot.subtitle = ggplot2::element_text(colour = cols[["white"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["screen"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["white"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["sega"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["strip"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["charcoal"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = unname(cols[c("sega", "nintendo", "snes", "gray", "gold")]),
      palette.colour.discrete = unname(cols[c("sega", "nintendo", "snes", "gray", "gold")]),
      # default marks
      geom = ggplot2::element_geom(ink = cols[["white"]],
                                   paper = cols[["screen"]],
                                   accent = cols[["nintendo"]],
                                   colour = cols[["sega"]],
                                   fill = cols[["sega"]],
                                   family = base_family)
    )
}

# Sega blue, Nintendo red, and the Super Nintendo buttons
consolewars_cols <- list(
  dark = c(
    charcoal = "#1C1C1C",
    screen = "#2A2A2A",
    grid = "#444444",
    white = "#EEEEEE",
    sega = "#3D7BFF",
    nintendo = "#E60012",
    snes = "#9B8CF2",
    gray = "#B0B0B0",
    gold = "#FFD700",
    strip = "#EEEEEE"
  ),
  # the light palette keeps the dark role names
  light = c(
    charcoal = "#F6E8E8",
    screen = "#FFFAFA",
    grid = "#E4D3D4",
    white = "#422324",
    sega = "#0061EA",
    nintendo = "#D40000",
    snes = "#9384EA",
    gray = "#909090",
    gold = "#B28E00",
    strip = "#FFFAFA"
  )
)

