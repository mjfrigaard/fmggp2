#' Friends theme
#'
#' A late 90s `ggplot2` theme modeled on Monica's apartment in Friends (1994
#' to 2004): purple walls, a sofa cream plot area, a latte frame and title,
#' poppy red, navy, wood, rust, and rose marks, and a Central Perk chalkboard
#' (Chalkduster) title.
#'
#' @param base_size Base font size. Defaults to `11`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Chalkduster when
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
#'   labs(title = "Friends") +
#'   theme_friends(base_family = "sans", title_family = "sans")
theme_friends <- function(base_size = 11,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Chalkduster", "Chalkduster.ttf")) {
  cols <- friends_cols
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["white"]]),
      plot.background = ggplot2::element_rect(fill = cols[["purple"]],
                                              colour = cols[["latte"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family,
                                         colour = cols[["latte"]],
                                         size = ggplot2::rel(1.4)),
      plot.subtitle = ggplot2::element_text(colour = cols[["white"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["cream"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["lilac"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["white"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["latte"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["purple"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["purple"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = unname(cols[c("red", "navy", "wood", "rust", "rose")]),
      palette.colour.discrete = unname(cols[c("red", "navy", "wood", "rust", "rose")]),
      # default marks
      geom = ggplot2::element_geom(ink = cols[["purple"]],
                                   paper = cols[["cream"]],
                                   accent = cols[["red"]],
                                   colour = cols[["purple"]],
                                   fill = cols[["red"]],
                                   family = base_family)
    )
}

friends_cols <- c(
  purple = "#596086",
  latte = "#C5B3A4",
  cream = "#F9F6F0",
  lilac = "#DCD8E6",
  red = "#942833",
  navy = "#383F67",
  wood = "#784D38",
  rust = "#965E47",
  rose = "#B67A66",
  white = "#FFFFFF"
)
