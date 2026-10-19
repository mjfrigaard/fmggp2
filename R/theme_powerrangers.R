#' Power Rangers theme
#'
#' A `ggplot2` theme built from the Mighty Morphin Power Rangers: a light
#' gray background, a lightning gold frame, a red Copperplate title, and
#' red, blue, yellow, pink, black, and green Ranger marks.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Copperplate when
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
#'   labs(title = "Power Rangers") +
#'   theme_powerrangers(base_family = "sans", title_family = "sans")
theme_powerrangers <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Copperplate", "Copperplate.ttc")) {
  cols <- powerrangers_cols
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["ink"]]),
      plot.background = ggplot2::element_rect(fill = cols[["silver"]],
                                              colour = cols[["gold"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family,
                                         colour = cols[["red"]],
                                         size = ggplot2::rel(1.4)),
      plot.subtitle = ggplot2::element_text(colour = cols[["ink"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["white"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["ink"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["ink"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["white"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["silver"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = unname(cols[c("red", "blue", "yellow", "pink", "black", "green")]),
      palette.colour.discrete = unname(cols[c("red", "blue", "yellow", "pink", "black", "green")]),
      # default marks
      geom = ggplot2::element_geom(ink = cols[["ink"]],
                                   paper = cols[["white"]],
                                   accent = cols[["gold"]],
                                   colour = cols[["red"]],
                                   fill = cols[["red"]],
                                   family = base_family)
    )
}

# the six Ranger suits and the lightning bolt
powerrangers_cols <- c(
  silver = "#EDEDED",
  white = "#FFFFFF",
  grid = "#E0E0E0",
  ink = "#1A1A1A",
  gold = "#F5B800",
  red = "#D7141A",
  blue = "#1F4FBF",
  yellow = "#F5C400",
  pink = "#F06EAA",
  black = "#2B2B2B",
  green = "#1E9E3C"
)

