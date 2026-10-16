#' OK Soda theme
#'
#' A `ggplot2` theme built from OK Soda cans (1993 to 1995): a brushed
#' silver background, a black frame, a gray comic panel, OK red marks and
#' title, slate and brick accents, and a Courier New title.
#'
#' @param base_size Base font size. Defaults to `11`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Courier New when
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
#'   labs(title = "OK Soda") +
#'   theme_oksoda(base_family = "sans", title_family = "sans")
theme_oksoda <- function(base_size = 11,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Courier New", "Courier New Bold.ttf")) {
  cols <- oksoda_cols
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["ink"]]),
      plot.background = ggplot2::element_rect(fill = cols[["silver"]],
                                              colour = cols[["black"]],
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
      strip.background = ggplot2::element_rect(fill = cols[["black"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["silver"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["silver"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = unname(cols[c("red", "slate", "brick", "steel", "pink", "ink")]),
      palette.colour.discrete = unname(cols[c("red", "slate", "brick", "steel", "pink", "ink")]),
      # default marks
      geom = ggplot2::element_geom(ink = cols[["ink"]],
                                   paper = cols[["panel"]],
                                   accent = cols[["slate"]],
                                   colour = cols[["ink"]],
                                   fill = cols[["red"]],
                                   family = base_family)
    )
}

# the OK Soda cans: brushed aluminum, comic book ink, and OK red
oksoda_cols <- c(
  silver = "#DEDEDF",
  panel = "#C3C5C9",
  grid = "#A8AAB0",
  ink = "#303235",
  black = "#1C1C1E",
  red = "#CE4C50",
  slate = "#465973",
  brick = "#843C3C",
  steel = "#676A6F",
  pink = "#D47B84"
)
