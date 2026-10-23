#' Tamagotchi theme
#'
#' A late 90s `ggplot2` theme modeled on a Tamagotchi: a lilac egg shell,
#' a gray green LCD screen plot area, pink, teal, and yellow shell colors,
#' and a Futura title.
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
#'   labs(title = "Tamagotchi") +
#'   theme_tamagotchi(base_family = "sans", title_family = "sans")
theme_tamagotchi <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Futura", "Futura.ttc")) {
  cols <- tamagotchi_cols
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["pixel"]]),
      plot.background = ggplot2::element_rect(fill = cols[["egg"]],
                                              colour = cols[["pink"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family,
                                         colour = cols[["pixel"]],
                                         size = ggplot2::rel(1.4)),
      plot.subtitle = ggplot2::element_text(colour = cols[["pixel"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["lcd"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["pixel"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["pixel"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["egg"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["egg"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = unname(cols[c("pink", "teal", "yellow")]),
      palette.colour.discrete = unname(cols[c("pink", "teal", "yellow")]),
      # default marks
      geom = ggplot2::element_geom(ink = cols[["pixel"]],
                                   paper = cols[["lcd"]],
                                   accent = cols[["pink"]],
                                   colour = cols[["pixel"]],
                                   fill = cols[["teal"]],
                                   family = base_family)
    )
}

tamagotchi_cols <- c(
  egg = "#C9B6E4",
  lcd = "#B8C4A0",
  grid = "#A3AF8B",
  pixel = "#2F3A2F",
  pink = "#E84A8A",
  teal = "#1F9E8F",
  yellow = "#B07B00",
  white = "#FFFFFF"
)
