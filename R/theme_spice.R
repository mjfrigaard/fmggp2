#' Spice Girls theme
#'
#' A late 90s `ggplot2` theme modeled on the Spice World tour poster: a
#' black background with a tour red frame, a pink title, cream text, mint,
#' pink, orange, gold, and blue letter marks, and Trebuchet MS text.
#'
#' @param base_size Base font size. Defaults to `11`.
#' @param base_family Base font family. Defaults to Trebuchet MS when it's
#'     available on the system, otherwise `"sans"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c(rnorm(60, 11, 2), rnorm(40, 37, 6))), aes(x = x)) +
#'   geom_density() +
#'   labs(title = "Spice World") +
#'   theme_spice(base_family = "sans")
theme_spice <- function(base_size = 11,
                        base_family = register_font("Trebuchet MS",
                                                    "Trebuchet MS.ttf",
                                                    "Trebuchet MS Bold.ttf")) {
  cols <- spice_cols
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["cream"]]),
      plot.background = ggplot2::element_rect(fill = cols[["black"]],
                                              colour = cols[["red"]],
                                              linewidth = base_size / 3),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(face = "bold", colour = cols[["pink"]],
                                         size = ggplot2::rel(1.3)),
      plot.subtitle = ggplot2::element_text(colour = cols[["cream"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["panel"]]),
      panel.border = ggplot2::element_rect(colour = cols[["gold"]],
                                           fill = NA, linewidth = 1),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linetype = "dashed",
                                               linewidth = 0.3),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["cream"]]),
      axis.ticks = ggplot2::element_blank(),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["black"]], colour = NA),
      # the SPICE WORLD letter colors for discrete fills and colours
      palette.fill.discrete = unname(cols[c("mint", "pink", "orange", "gold", "blue")]),
      palette.colour.discrete = unname(cols[c("mint", "pink", "orange", "gold", "blue")]),
      # mint marks by default
      geom = ggplot2::element_geom(ink = cols[["cream"]],
                                   paper = cols[["panel"]],
                                   accent = cols[["pink"]],
                                   colour = cols[["mint"]],
                                   fill = cols[["mint"]],
                                   family = base_family)
    )
}

spice_cols <- c(
  black = "#18191A",
  panel = "#292223",
  grid = "#443F43",
  cream = "#F3E0D8",
  red = "#C93C22",
  pink = "#E66495",
  mint = "#5EC49C",
  orange = "#D77D4A",
  gold = "#F1B86B",
  blue = "#8EB5C6"
)
