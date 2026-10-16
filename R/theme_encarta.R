#' Encarta theme
#'
#' A late 90s `ggplot2` theme modeled on MindMaze, the castle trivia game in
#' Microsoft Encarta 97: a dark stone background, a carved wood frame, a gold
#' banner title, a parchment plot area, stone gray, copper, gold, and moss
#' marks, and a Georgia title.
#'
#' @param base_size Base font size. Defaults to `11`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Georgia Bold when
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
#'   labs(title = "Encarta") +
#'   theme_encarta(base_family = "sans", title_family = "sans")
theme_encarta <- function(base_size = 11,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Georgia", "Georgia Bold.ttf")) {
  cols <- encarta_cols
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["parchment"]]),
      plot.background = ggplot2::element_rect(fill = cols[["stone_dark"]],
                                              colour = cols[["frame"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family,
                                         colour = cols[["gold"]],
                                         size = ggplot2::rel(1.4)),
      plot.subtitle = ggplot2::element_text(colour = cols[["parchment"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["parchment"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["parchment"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["sage"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["wood"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["stone_dark"]], colour = NA),
      # stone blue, frame brown, and gold for discrete fills and colours
      palette.fill.discrete = unname(cols[c("stone", "copper", "gold", "sage")]),
      palette.colour.discrete = unname(cols[c("stone", "copper", "gold", "sage")]),
      # stone gray fills with dark wood lines by default
      geom = ggplot2::element_geom(ink = cols[["wood"]],
                                   paper = cols[["parchment"]],
                                   accent = cols[["gold"]],
                                   colour = cols[["wood"]],
                                   fill = cols[["stone"]],
                                   family = base_family)
    )
}

# colors sampled from the MindMaze castle art in Encarta 97
encarta_cols <- c(
  stone = "#655F58",
  stone_dark = "#3F3632",
  parchment = "#E8DCC0",
  grid = "#C0B89D",
  frame = "#704E37",
  copper = "#9B5337",
  wood = "#2E2522",
  gold = "#D0A86B",
  sage = "#85826C"
)
