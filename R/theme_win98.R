#' Windows 98 theme
#'
#' A late 90s `ggplot2` theme modeled on a Windows 98 window sitting on the
#' teal desktop: silver window frame, navy title bar, white plot area, and
#' navy marks.
#'
#' @param base_size Base font size. Defaults to `11`.
#' @param base_family Base font family. Defaults to Tahoma when it's
#'     available on the system, otherwise `"sans"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = rnorm(100)), aes(x = x)) +
#'   geom_histogram(bins = 20) +
#'   labs(title = "Windows 98") +
#'   theme_win98(base_family = "sans")
theme_win98 <- function(base_size = 11, base_family = win98_font()) {
  cols <- win98_cols
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      # window frame on the desktop
      plot.background = ggplot2::element_rect(fill = cols[["silver"]],
                                              colour = cols[["desktop"]],
                                              linewidth = base_size),
      plot.margin = ggplot2::margin(base_size * 1.5, base_size * 1.5,
                                    base_size * 1.5, base_size * 1.5),
      # navy title bar
      plot.title.position = "plot",
      plot.title = ggtext::element_textbox_simple(
                      colour = cols[["white"]],
                      fill = cols[["navy"]],
                      face = "bold",
                      size = ggplot2::rel(1.05),
                      padding = ggplot2::margin(4, 6, 4, 6),
                      margin = ggplot2::margin(0, 0, 4, 0)),
      plot.subtitle = ggplot2::element_text(colour = cols[["black"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      # white content area with a sunken border
      panel.background = ggplot2::element_rect(fill = cols[["white"]]),
      panel.border = ggplot2::element_rect(colour = cols[["shadow"]],
                                           fill = NA, linewidth = 1),
      panel.grid.major = ggplot2::element_line(colour = cols[["silver"]],
                                               linetype = "dotted"),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["black"]]),
      axis.ticks = ggplot2::element_line(colour = cols[["shadow"]]),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["silver"]]),
      # desktop colors for discrete fills and colours
      palette.fill.discrete = unname(cols[c("shadow", "navy", "desktop")]),
      palette.colour.discrete = unname(cols[c("shadow", "navy", "desktop")]),
      # navy marks by default
      geom = ggplot2::element_geom(ink = cols[["black"]],
                                   paper = cols[["white"]],
                                   accent = cols[["navy"]],
                                   colour = cols[["navy"]],
                                   fill = cols[["navy"]])
    )
}

win98_cols <- c(
  desktop = "#008080",
  silver = "#C0C0C0",
  shadow = "#808080",
  navy = "#000080",
  white = "#FFFFFF",
  black = "#000000"
)

# Tahoma ships with macOS and Windows; fall back to sans when it's missing
win98_font <- function(path = "/System/Library/Fonts/Supplemental/Tahoma.ttf") {
  if (file.exists(path)) {
    sysfonts::font_add(family = "Tahoma", regular = path)
    "Tahoma"
  } else {
    "sans"
  }
}
