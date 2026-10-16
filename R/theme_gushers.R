#' Fruit Gushers theme
#'
#' A `ggplot2` theme built from Fruit Gushers: a white plate background, a red
#' frame and title, red, green, teal, orange, and pink fruit snack marks, and
#' a Chalkboard title.
#'
#' @param base_size Base font size. Defaults to `11`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Chalkboard when
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
#'   labs(title = "Gushers") +
#'   theme_gushers(base_family = "sans", title_family = "sans")
theme_gushers <- function(base_size = 11,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Chalkboard", "Chalkboard.ttc")) {
  cols <- gushers_cols
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["ink"]]),
      plot.background = ggplot2::element_rect(fill = cols[["plate"]],
                                              colour = cols[["red"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family,
                                         colour = cols[["red"]],
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
      strip.background = ggplot2::element_rect(fill = cols[["green"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["plate"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["plate"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = unname(cols[c("red", "green", "teal", "orange", "pink", "maroon", "moss", "gray")]),
      palette.colour.discrete = unname(cols[c("red", "green", "teal", "orange", "pink", "maroon", "moss", "gray")]),
      # default marks
      geom = ggplot2::element_geom(ink = cols[["ink"]],
                                   paper = cols[["panel"]],
                                   accent = cols[["teal"]],
                                   colour = cols[["red"]],
                                   fill = cols[["red"]],
                                   family = base_family)
    )
}

# a pile of Fruit Gushers
gushers_cols <- c(
  plate = "#F2F1F0",
  panel = "#FFFFFF",
  grid = "#DAD9D8",
  ink = "#1C180C",
  red = "#D01D27",
  green = "#4E6B44",
  teal = "#225453",
  orange = "#E06A2A",
  pink = "#D16165",
  maroon = "#63291F",
  moss = "#3A4D20",
  gray = "#7B7A7B"
)
