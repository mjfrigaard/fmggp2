#' Titanic theme
#'
#' A late 90s `ggplot2` theme modeled on Titanic (1997): a deep ocean
#' background, an iceberg white plot area, steel blue, gold, and funnel red
#' marks, and a Big Caslon title.
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
      text = ggplot2::element_text(colour = cols[["iceberg"]]),
      plot.background = ggplot2::element_rect(fill = cols[["ocean"]],
                                              colour = cols[["gold"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family,
                                         colour = cols[["gold"]],
                                         size = ggplot2::rel(1.4)),
      plot.subtitle = ggplot2::element_text(colour = cols[["iceberg"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["iceberg"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["iceberg"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["gold"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["ocean"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["ocean"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = unname(cols[c("steel", "gold", "red")]),
      palette.colour.discrete = unname(cols[c("steel", "gold", "red")]),
      # default marks
      geom = ggplot2::element_geom(ink = cols[["ink"]],
                                   paper = cols[["iceberg"]],
                                   accent = cols[["gold"]],
                                   colour = cols[["ink"]],
                                   fill = cols[["steel"]],
                                   family = base_family)
    )
}

titanic_cols <- c(
  ocean = "#0B2545",
  iceberg = "#EEF4ED",
  grid = "#C9D6DF",
  ink = "#0B2545",
  gold = "#C9A227",
  red = "#B3001B",
  steel = "#5B84B1",
  white = "#FFFFFF"
)
