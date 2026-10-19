#' Game Boy theme
#'
#' A late 90s `ggplot2` theme modeled on the original Game Boy screen: the
#' four shade green palette, a dark green frame, and the pixel font
#' Press Start 2P (bundled with the package).
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Press Start 2P, or
#'     `"sans"` if the font file can't be found.
#'
#' @return A `ggplot2` theme object.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b", "c")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Game Boy") +
#'   theme_gameboy(base_family = "sans")
theme_gameboy <- function(base_size = 15, base_family = gameboy_font()) {
  cols <- gameboy_cols
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["darkest"]]),
      # screen inside a dark green frame
      plot.background = ggplot2::element_rect(fill = cols[["lightest"]],
                                              colour = cols[["darkest"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(size = ggplot2::rel(1.5),
                                         margin = ggplot2::margin(0, 0, 6, 0)),
      plot.subtitle = ggplot2::element_text(colour = cols[["dark"]],
                                            margin = ggplot2::margin(0, 0, 8, 0)),
      axis.text = ggplot2::element_text(colour = cols[["darkest"]]),
      axis.ticks = ggplot2::element_blank(),
      panel.background = ggplot2::element_rect(fill = cols[["lightest"]]),
      panel.border = ggplot2::element_rect(colour = cols[["dark"]],
                                           fill = NA, linewidth = 1),
      panel.grid.major = ggplot2::element_line(colour = cols[["light"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["lightest"]], colour = NA),
      # darkest to lightest for discrete fills and colours
      palette.fill.discrete = unname(cols[c("darkest", "dark", "light")]),
      palette.colour.discrete = unname(cols[c("darkest", "dark", "light")]),
      # darkest green marks by default
      geom = ggplot2::element_geom(ink = cols[["darkest"]],
                                   paper = cols[["lightest"]],
                                   accent = cols[["dark"]],
                                   colour = cols[["darkest"]],
                                   fill = cols[["darkest"]],
                                   family = base_family)
    )
}

gameboy_cols <- c(
  darkest = "#0F380F",
  dark = "#306230",
  light = "#8BAC0F",
  lightest = "#9BBC0F"
)

# Press Start 2P ships in inst/assets; fall back to sans when it's missing
gameboy_font <- function(path = file.path(font_path(), "PressStart2P",
                                          "PressStart2P-Regular.ttf")) {
  if (file.exists(path)) {
    sysfonts::font_add(family = "Press Start 2P", regular = path)
    "Press Start 2P"
  } else {
    "sans"
  }
}
