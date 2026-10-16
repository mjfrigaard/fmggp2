#' Beanie Babies theme
#'
#' A late 90s `ggplot2` theme modeled on a Ty Beanie with its heart tag: a
#' pale aqua blanket background, a tag red frame and title, a white plot
#' area, red, teal, gold, pink, plum, and orange marks, and Comic Sans MS
#' text.
#'
#' @param base_size Base font size. Defaults to `11`.
#' @param base_family Base font family. Defaults to Comic Sans MS when it's
#'     available on the system, otherwise `"sans"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = "", y = rlnorm(100, log(15), 0.8)), aes(x = x, y = y)) +
#'   geom_violin() +
#'   labs(title = "Beanie Babies") +
#'   theme_beanie(base_family = "sans")
theme_beanie <- function(base_size = 11,
                         base_family = register_font("Comic Sans MS",
                                                     "Comic Sans MS.ttf",
                                                     "Comic Sans MS Bold.ttf")) {
  cols <- beanie_cols
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["ink"]]),
      plot.background = ggplot2::element_rect(fill = cols[["cream"]],
                                              colour = cols[["red"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(face = "bold", colour = cols[["red"]],
                                         size = ggplot2::rel(1.3)),
      plot.subtitle = ggplot2::element_text(margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["white"]]),
      panel.border = ggplot2::element_rect(colour = cols[["gold"]],
                                           fill = NA, linewidth = 1.2),
      panel.grid.major = ggplot2::element_line(colour = cols[["blush"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["ink"]]),
      axis.ticks = ggplot2::element_blank(),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["cream"]], colour = NA),
      # tag red, then the blanket and fur colors for discrete fills and colours
      palette.fill.discrete = unname(cols[c("red", "blue", "gold", "pink", "plum", "orange")]),
      palette.colour.discrete = unname(cols[c("red", "blue", "gold", "pink", "plum", "orange")]),
      # red marks with a gold outline by default
      geom = ggplot2::element_geom(ink = cols[["ink"]],
                                   paper = cols[["white"]],
                                   accent = cols[["gold"]],
                                   colour = cols[["gold"]],
                                   fill = cols[["red"]],
                                   family = base_family)
    )
}

beanie_cols <- c(
  cream = "#D6E8ED",
  red = "#EB0716",
  gold = "#DDB44B",
  blush = "#BFDCE5",
  blue = "#389BB5",
  pink = "#E5838E",
  plum = "#A35477",
  orange = "#EC6739",
  ink = "#4D333C",
  white = "#FFFFFF"
)
