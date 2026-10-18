#' Novell NetWare theme
#'
#' A `ggplot2` theme built from Novell NetWare 2.0 boxes: a NetWare red
#' background with white text, a maroon frame, maroon, red, rose, and blush
#' marks, and a Gill Sans title.
#'
#' @param base_size Base font size. Defaults to `11`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Gill Sans when
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
#'   labs(title = "Novell NetWare") +
#'   theme_netware(base_family = "sans", title_family = "sans")
theme_netware <- function(base_size = 11,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Gill Sans", "GillSans.ttc")) {
  cols <- netware_cols
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["white"]]),
      plot.background = ggplot2::element_rect(fill = cols[["red"]],
                                              colour = cols[["maroon"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family, face = "bold",
                                         colour = cols[["white"]],
                                         size = ggplot2::rel(1.5)),
      plot.subtitle = ggplot2::element_text(colour = cols[["white"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["panel"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["white"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["ink"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["panel"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["panel"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = unname(cols[c("maroon", "red", "rose", "blush")]),
      palette.colour.discrete = unname(cols[c("maroon", "red", "rose", "blush")]),
      # default marks
      geom = ggplot2::element_geom(ink = cols[["ink"]],
                                   paper = cols[["panel"]],
                                   accent = cols[["maroon"]],
                                   colour = cols[["ink"]],
                                   fill = cols[["red"]],
                                   family = base_family)
    )
}

# Novell NetWare 2.0 boxes
netware_cols <- c(
  red = "#A91E28",
  panel = "#F6EEEE",
  grid = "#E0C9CA",
  ink = "#3A0A06",
  white = "#FFFFFF",
  maroon = "#69100A",
  rose = "#B3575A",
  blush = "#C4AAAD"
)
