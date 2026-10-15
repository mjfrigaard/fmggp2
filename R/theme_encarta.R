#' Encarta theme
#'
#' A late 90s `ggplot2` theme modeled on Microsoft Encarta and Encyclopedia
#' Britannica on CD-ROM: a midnight navy background, parchment text, gold
#' accents, Encarta blue and Britannica maroon marks, and a Georgia title.
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
      plot.background = ggplot2::element_rect(fill = cols[["navy"]],
                                              colour = cols[["gold"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family,
                                         colour = cols[["gold"]],
                                         size = ggplot2::rel(1.4)),
      plot.subtitle = ggplot2::element_text(colour = cols[["parchment"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["panel"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["parchment"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["gold"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["navy"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["navy"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = unname(cols[c("blue", "maroon", "gray")]),
      palette.colour.discrete = unname(cols[c("blue", "maroon", "gray")]),
      # default marks
      geom = ggplot2::element_geom(ink = cols[["parchment"]],
                                   paper = cols[["panel"]],
                                   accent = cols[["gold"]],
                                   colour = cols[["gold"]],
                                   fill = cols[["blue"]],
                                   family = base_family)
    )
}

encarta_cols <- c(
  navy = "#0B1F3A",
  panel = "#132B4F",
  grid = "#24426E",
  parchment = "#F4E9C8",
  gold = "#D4AF37",
  blue = "#3FA9F5",
  maroon = "#B03A2E",
  gray = "#A8A29A"
)
