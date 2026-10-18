#' 3Com Audrey theme
#'
#' A `ggplot2` theme built from the 3Com Audrey internet appliance: a white
#' plastic background, a black tile frame, a teal title, teal, navy, tan,
#' brown, and aqua marks, and an Arial Rounded title.
#'
#' @param base_size Base font size. Defaults to `11`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Arial Rounded when
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
#'   labs(title = "3Com Audrey") +
#'   theme_audrey(base_family = "sans", title_family = "sans")
theme_audrey <- function(base_size = 11,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Arial Rounded", "Arial Rounded Bold.ttf")) {
  cols <- audrey_cols
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["ink"]]),
      plot.background = ggplot2::element_rect(fill = cols[["plastic"]],
                                              colour = cols[["ink"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family, face = "bold",
                                         colour = cols[["teal"]],
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
      palette.fill.discrete = unname(cols[c("teal", "navy", "tan", "brown", "aqua")]),
      palette.colour.discrete = unname(cols[c("teal", "navy", "tan", "brown", "aqua")]),
      # default marks
      geom = ggplot2::element_geom(ink = cols[["ink"]],
                                   paper = cols[["panel"]],
                                   accent = cols[["tan"]],
                                   colour = cols[["ink"]],
                                   fill = cols[["teal"]],
                                   family = base_family)
    )
}

# A 3Com Audrey on a kitchen counter
audrey_cols <- c(
  plastic = "#DCDBD5",
  panel = "#F2F1EC",
  grid = "#C1BFBA",
  ink = "#0D0C0D",
  teal = "#357A84",
  navy = "#0C263D",
  tan = "#AA875B",
  brown = "#6C4D35",
  aqua = "#55ABB1"
)
