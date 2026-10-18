#' Handspring Visor theme
#'
#' A `ggplot2` theme built from a green Handspring Visor Deluxe: a pale
#' lavender background, a translucent green frame, a gray LCD panel, green,
#' gray, mint, and silver marks, and a Trebuchet MS title.
#'
#' @param base_size Base font size. Defaults to `11`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Trebuchet MS when
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
#'   labs(title = "Handspring Visor") +
#'   theme_visor(base_family = "sans", title_family = "sans")
theme_visor <- function(base_size = 11,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Trebuchet MS", "Trebuchet MS Bold.ttf")) {
  cols <- visor_cols
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["ink"]]),
      plot.background = ggplot2::element_rect(fill = cols[["lavender"]],
                                              colour = cols[["frame"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family, face = "bold",
                                         colour = cols[["green"]],
                                         size = ggplot2::rel(1.5)),
      plot.subtitle = ggplot2::element_text(colour = cols[["ink"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["lcd"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["ink"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["ink"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["lcd"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["lcd"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = unname(cols[c("green", "ink", "mint", "silver")]),
      palette.colour.discrete = unname(cols[c("green", "ink", "mint", "silver")]),
      # default marks
      geom = ggplot2::element_geom(ink = cols[["ink"]],
                                   paper = cols[["lcd"]],
                                   accent = cols[["mint"]],
                                   colour = cols[["ink"]],
                                   fill = cols[["green"]],
                                   family = base_family)
    )
}

# A green Handspring Visor Deluxe
visor_cols <- c(
  lavender = "#DBDCEF",
  lcd = "#D5D9CF",
  grid = "#B4BBAF",
  ink = "#3E3F3A",
  frame = "#50ADA0",
  green = "#21786B",
  mint = "#5CB8AC",
  silver = "#808284"
)
