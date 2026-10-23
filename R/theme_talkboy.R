#' Talkboy theme
#'
#' A `ggplot2` theme built from the Deluxe Talkboy cassette recorder: a
#' dark walnut background, a silver frame and panel, button blue marks, and
#' a Brush Script title.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Brush Script when
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
#'   labs(title = "Talkboy") +
#'   theme_talkboy(base_family = "sans", title_family = "sans")
theme_talkboy <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Brush Script", "Brush Script.ttf")) {
  cols <- talkboy_cols
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["silver"]]),
      plot.background = ggplot2::element_rect(fill = cols[["walnut"]],
                                              colour = cols[["silver"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family,
                                         colour = cols[["silver"]],
                                         size = ggplot2::rel(1.9)),
      plot.subtitle = ggplot2::element_text(colour = cols[["silver"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["silver"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["silver"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["blue"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["ink"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["walnut"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = unname(cols[c("blue", "brown", "navy", "sky", "slate", "gray")]),
      palette.colour.discrete = unname(cols[c("blue", "brown", "navy", "sky", "slate", "gray")]),
      # default marks
      geom = ggplot2::element_geom(ink = cols[["ink"]],
                                   paper = cols[["silver"]],
                                   accent = cols[["navy"]],
                                   colour = cols[["blue"]],
                                   fill = cols[["blue"]],
                                   family = base_family)
    )
}

# the Deluxe Talkboy on a walnut table
talkboy_cols <- c(
  walnut = "#291717",
  silver = "#E2E2E0",
  grid = "#BCBBB3",
  ink = "#1E1012",
  blue = "#5D81BE",
  brown = "#48332B",
  navy = "#3C4A62",
  sky = "#709CE1",
  slate = "#6B7086",
  gray = "#8C8D91"
)
