#' VRML theme
#'
#' A `ggplot2` theme built from a VRML living room: a tan wall background, a
#' floor brown frame, a pale panel, sofa red, lamp green, black, and glass
#' marks, and an Andale Mono title.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Andale Mono when
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
#'   labs(title = "VRML") +
#'   theme_vrml(base_family = "sans", title_family = "sans")
theme_vrml <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Andale Mono", "Andale Mono.ttf")) {
  cols <- vrml_cols
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["ink"]]),
      plot.background = ggplot2::element_rect(fill = cols[["wall"]],
                                              colour = cols[["floor"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family, face = "bold",
                                         colour = cols[["ink"]],
                                         size = ggplot2::rel(1.5)),
      plot.subtitle = ggplot2::element_text(colour = cols[["ink"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["panel"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["ink"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["ink"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["panel"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["panel"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = unname(cols[c("sofa", "lamp", "ink", "glass")]),
      palette.colour.discrete = unname(cols[c("sofa", "lamp", "ink", "glass")]),
      # default marks
      geom = ggplot2::element_geom(ink = cols[["ink"]],
                                   paper = cols[["panel"]],
                                   accent = cols[["lamp"]],
                                   colour = cols[["ink"]],
                                   fill = cols[["sofa"]],
                                   family = base_family)
    )
}

# A VRML living room render
vrml_cols <- c(
  wall = "#947C59",
  panel = "#E9E2D3",
  grid = "#C9BBA0",
  ink = "#151616",
  floor = "#6F442C",
  sofa = "#6F201D",
  lamp = "#2D8620",
  glass = "#8FA3A3"
)
