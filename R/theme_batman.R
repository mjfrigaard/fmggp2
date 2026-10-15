#' Batman theme
#'
#' A `ggplot2` theme built from the Batman (1989) color palette: a black
#' background, a gold bat signal frame and title, a dark brown plot area,
#' silver text, orange, gold, steel, rust, and pale gold marks, and a DIN
#' Condensed title.
#'
#' @param base_size Base font size. Defaults to `11`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to DIN Condensed when
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
#'   labs(title = "Batman") +
#'   theme_batman(base_family = "sans", title_family = "sans")
theme_batman <- function(base_size = 11,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("DIN Condensed", "DIN Condensed Bold.ttf")) {
  cols <- batman_cols
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["silver"]]),
      plot.background = ggplot2::element_rect(fill = cols[["black"]],
                                              colour = cols[["gold"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family,
                                         colour = cols[["gold"]],
                                         size = ggplot2::rel(1.5)),
      plot.subtitle = ggplot2::element_text(colour = cols[["silver"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["brown"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["gray"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["silver"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["gold"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["black"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["black"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = unname(cols[c("orange", "gold", "steel", "rust", "pale_gold", "bright_orange")]),
      palette.colour.discrete = unname(cols[c("orange", "gold", "steel", "rust", "pale_gold", "bright_orange")]),
      # orange fills with black lines by default
      geom = ggplot2::element_geom(ink = cols[["silver"]],
                                   paper = cols[["brown"]],
                                   accent = cols[["gold"]],
                                   colour = cols[["black"]],
                                   fill = cols[["orange"]],
                                   family = base_family)
    )
}

# the Batman (1989) palette swatches, plus the black background
batman_cols <- c(
  black = "#050203",
  brown = "#2E2017",
  gray = "#5A4B44",
  rust = "#A95B2B",
  orange = "#E96A23",
  steel = "#8C939B",
  bright_orange = "#F48E20",
  gold = "#F9BB2C",
  pale_gold = "#F3D07F",
  silver = "#E9EBE8"
)
