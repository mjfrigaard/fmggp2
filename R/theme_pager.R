#' Two-way pager theme
#'
#' A `ggplot2` theme built from a RIM 950 two-way pager: a concrete background,
#' a charcoal frame and title, a pale LCD panel, charcoal, orange, and slate
#' marks, and an Arial Black title.
#'
#' @param base_size Base font size. Defaults to `15`.
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
#'   labs(title = "Two-way pager") +
#'   theme_pager(base_family = "sans", title_family = "sans")
theme_pager <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Arial Black", "Arial Black.ttf")) {
  cols <- pager_cols
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["ink"]]),
      plot.background = ggplot2::element_rect(fill = cols[["concrete"]],
                                              colour = cols[["ink"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family, face = "bold",
                                         colour = cols[["ink"]],
                                         size = ggplot2::rel(1.5)),
      plot.subtitle = ggplot2::element_text(colour = cols[["ink"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["lcd"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["ink"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["ink"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["lcd"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["lcd"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = unname(cols[c("ink", "orange", "slate")]),
      palette.colour.discrete = unname(cols[c("ink", "orange", "slate")]),
      # default marks
      geom = ggplot2::element_geom(ink = cols[["ink"]],
                                   paper = cols[["lcd"]],
                                   accent = cols[["orange"]],
                                   colour = cols[["ink"]],
                                   fill = cols[["slate"]],
                                   family = base_family)
    )
}

# A RIM 950 pager on concrete
pager_cols <- c(
  concrete = "#ABAFB2",
  lcd = "#C3D7D9",
  grid = "#A3B6B8",
  ink = "#252B38",
  orange = "#C38F3B",
  slate = "#728194"
)
