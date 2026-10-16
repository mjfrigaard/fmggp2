#' Netscape theme
#'
#' A late 90s `ggplot2` theme modeled on the Netscape Navigator logo: a night
#' sky background, a teal frame, a glowing teal title, and teal, aurora
#' green, sea glass, and deep teal marks, and a Times New Roman title.
#'
#' @param base_size Base font size. Defaults to `11`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Times New Roman Bold when
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
#'   labs(title = "Netscape") +
#'   theme_netscape(base_family = "sans", title_family = "sans")
theme_netscape <- function(base_size = 11,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Times New Roman", "Times New Roman Bold.ttf")) {
  cols <- netscape_cols
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["white"]]),
      plot.background = ggplot2::element_rect(fill = cols[["night"]],
                                              colour = cols[["teal"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family,
                                         colour = cols[["glow"]],
                                         size = ggplot2::rel(1.4)),
      plot.subtitle = ggplot2::element_text(colour = cols[["white"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["panel"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["white"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["teal"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["night"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["night"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = unname(cols[c("teal", "aurora", "sea", "deep")]),
      palette.colour.discrete = unname(cols[c("teal", "aurora", "sea", "deep")]),
      # default marks
      geom = ggplot2::element_geom(ink = cols[["white"]],
                                   paper = cols[["panel"]],
                                   accent = cols[["glow"]],
                                   colour = cols[["white"]],
                                   fill = cols[["teal"]],
                                   family = base_family)
    )
}

netscape_cols <- c(
  night = "#19171F",
  panel = "#163040",
  grid = "#2C4A4F",
  white = "#EFF6F5",
  glow = "#5EC0AF",
  teal = "#38AAB0",
  aurora = "#17986F",
  sea = "#90B3A9",
  deep = "#1F7275"
)
