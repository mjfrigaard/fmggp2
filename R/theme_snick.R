#' SNICK theme
#'
#' A `ggplot2` theme built from Nickelodeon's Saturday night block
#' (SNICK): a night purple background, a Nickelodeon orange frame and
#' title, slime green, purple, blue, yellow, and pink marks, and an Arial
#' Black title.
#'
#' @param base_size Base font size. Defaults to `11`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Arial Black when
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
#'   labs(title = "SNICK") +
#'   theme_snick(base_family = "sans", title_family = "sans")
theme_snick <- function(base_size = 11,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Arial Black", "Arial Black.ttf")) {
  cols <- snick_cols
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["white"]]),
      plot.background = ggplot2::element_rect(fill = cols[["night"]],
                                              colour = cols[["orange"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family,
                                         colour = cols[["orange"]],
                                         size = ggplot2::rel(1.4)),
      plot.subtitle = ggplot2::element_text(colour = cols[["white"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["couch"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["white"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["orange"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["night"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["night"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = unname(cols[c("orange", "slime", "purple", "blue", "yellow", "pink", "white")]),
      palette.colour.discrete = unname(cols[c("orange", "slime", "purple", "blue", "yellow", "pink", "white")]),
      # default marks
      geom = ggplot2::element_geom(ink = cols[["white"]],
                                   paper = cols[["couch"]],
                                   accent = cols[["slime"]],
                                   colour = cols[["orange"]],
                                   fill = cols[["orange"]],
                                   family = base_family)
    )
}

# Nickelodeon orange, slime green, and the SNICK night sky
snick_cols <- c(
  night = "#1E1238",
  couch = "#2C1D52",
  grid = "#46356F",
  orange = "#F57D0D",
  slime = "#8CC63F",
  purple = "#B07CE8",
  blue = "#29B6F6",
  yellow = "#FFD200",
  pink = "#FF5FA2",
  white = "#F4F1FA"
)

