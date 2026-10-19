#' Crystal Pepsi theme
#'
#' A `ggplot2` theme built from Crystal Pepsi (1992 to 1994): a clear bottle
#' cream background, a navy frame, Pepsi red and navy marks, a silver label
#' gray, and a Futura title.
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
#'   labs(title = "Crystal Pepsi") +
#'   theme_crystalpepsi(base_family = "sans", title_family = "sans")
theme_crystalpepsi <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Futura", "Futura.ttc")) {
  cols <- crystalpepsi_cols
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["ink"]]),
      plot.background = ggplot2::element_rect(fill = cols[["clear"]],
                                              colour = cols[["navy"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family, face = "bold",
                                         colour = cols[["red"]],
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
      strip.background = ggplot2::element_rect(fill = cols[["navy"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["clear"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["clear"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = unname(cols[c("red", "navy", "blue", "silver", "salmon", "brick")]),
      palette.colour.discrete = unname(cols[c("red", "navy", "blue", "silver", "salmon", "brick")]),
      # default marks
      geom = ggplot2::element_geom(ink = cols[["ink"]],
                                   paper = cols[["panel"]],
                                   accent = cols[["blue"]],
                                   colour = cols[["navy"]],
                                   fill = cols[["red"]],
                                   family = base_family)
    )
}

# Crystal Pepsi bottles and labels
crystalpepsi_cols <- c(
  clear = "#F3F1E6",
  panel = "#FBFAF4",
  grid = "#D9D1BE",
  ink = "#151D43",
  red = "#C52C28",
  navy = "#171F48",
  blue = "#447090",
  silver = "#948F83",
  salmon = "#B6665A",
  brick = "#9C1D1C"
)
