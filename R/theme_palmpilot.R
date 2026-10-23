#' Palm Pilot theme
#'
#' A `ggplot2` theme built from a PalmPilot Professional: a charcoal case
#' background, a teal frame, a green LCD panel, ink, LCD green, plum, and
#' teal marks, and a white Futura title.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Futura when
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
#'   labs(title = "Palm Pilot") +
#'   theme_palmpilot(base_family = "sans", title_family = "sans")
theme_palmpilot <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Futura", "Futura.ttc")) {
  cols <- palmpilot_cols
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["white"]]),
      plot.background = ggplot2::element_rect(fill = cols[["charcoal"]],
                                              colour = cols[["hotsync"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family, face = "bold",
                                         colour = cols[["white"]],
                                         size = ggplot2::rel(1.5)),
      plot.subtitle = ggplot2::element_text(colour = cols[["white"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["lcd"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["white"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["ink"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["lcd"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["lcd"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = unname(cols[c("ink", "green", "plum", "teal")]),
      palette.colour.discrete = unname(cols[c("ink", "green", "plum", "teal")]),
      # default marks
      geom = ggplot2::element_geom(ink = cols[["ink"]],
                                   paper = cols[["lcd"]],
                                   accent = cols[["plum"]],
                                   colour = cols[["ink"]],
                                   fill = cols[["green"]],
                                   family = base_family)
    )
}

# A PalmPilot Professional
palmpilot_cols <- c(
  charcoal = "#4C4949",
  lcd = "#B5C7B8",
  grid = "#8DB5A2",
  ink = "#2B302C",
  white = "#F2F2EE",
  green = "#4E7454",
  plum = "#71626A",
  teal = "#2E8C85",
  hotsync = "#55C0B8"
)
