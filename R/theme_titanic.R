#' Titanic theme
#'
#' A late 90s `ggplot2` theme modeled on Titanic (1997), using the ship's
#' original paint colors: a hull black background, a gold hull stripe frame
#' and title, a canvas plot area with deck planking grid lines, antifouling
#' red, White Star buff, funnel gray, and mast brown marks, and a Big Caslon
#' title.
#'
#' @param base_size Base font size. Defaults to `11`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Big Caslon when
#'     it's available on the system, otherwise `"sans"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Titanic") +
#'   theme_titanic(base_family = "sans", title_family = "sans")
theme_titanic <- function(base_size = 11,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Big Caslon", "BigCaslon.ttf")) {
  cols <- titanic_cols
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["canvas"]]),
      plot.background = ggplot2::element_rect(fill = cols[["hull_black"]],
                                              colour = cols[["hull_stripe"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family,
                                         colour = cols[["hull_stripe"]],
                                         size = ggplot2::rel(1.4)),
      plot.subtitle = ggplot2::element_text(colour = cols[["canvas"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["canvas"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["deck"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["canvas"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["hull_stripe"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["hull_black"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["hull_black"]], colour = NA),
      # paint colors for discrete fills and colours
      palette.fill.discrete = unname(cols[c("antifouling", "buff", "funnel", "masts")]),
      palette.colour.discrete = unname(cols[c("antifouling", "buff", "funnel", "masts")]),
      # buff fills with hull black lines by default
      geom = ggplot2::element_geom(ink = cols[["hull_black"]],
                                   paper = cols[["canvas"]],
                                   accent = cols[["hull_stripe"]],
                                   colour = cols[["hull_black"]],
                                   fill = cols[["buff"]],
                                   family = base_family)
    )
}

# from the "Titanic paints" chart: antifouling (NARN42), canvas (RM07),
# wooden deck planking (ARG01), White Star buff (US30), hull black (KM05),
# hull stripe (ACJ19), masts (NARN44), funnel casings (NARN50)
titanic_cols <- c(
  antifouling = "#8F3A2D",
  canvas = "#F3EFE3",
  deck = "#DDCBA1",
  buff = "#C18F62",
  hull_black = "#2C3134",
  hull_stripe = "#FFAB00",
  masts = "#7C4B27",
  funnel = "#686E67"
)
