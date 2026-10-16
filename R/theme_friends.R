#' Friends theme
#'
#' A late 90s `ggplot2` theme modeled on the Friends (1994 to 2004) color
#' palette: Monica's purple apartment walls, a Central Perk latte frame and
#' title, a cream plot area, red, teal, olive, orange, rose, and mocha marks,
#' and a Central Perk chalkboard (Chalkduster) title.
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
      palette.fill.discrete = unname(cols[c("red", "teal", "olive", "orange", "rose", "mocha")]),
      palette.colour.discrete = unname(cols[c("red", "teal", "olive", "orange", "rose", "mocha")]),
      # default marks
      geom = ggplot2::element_geom(ink = cols[["purple"]],
                                   paper = cols[["cream"]],
                                   accent = cols[["red"]],
                                   colour = cols[["purple"]],
                                   fill = cols[["teal"]],
                                   family = base_family)
    )
}

friends_cols <- c(
  purple = "#655C8B",
  latte = "#C8A07D",
  cream = "#F2EBDE",
  lilac = "#D3C4BA",
  red = "#A81213",
  teal = "#264D52",
  olive = "#766D2A",
  orange = "#B27033",
  rose = "#BA7A8A",
  mocha = "#8A6958",
  white = "#FFFFFF"
)
