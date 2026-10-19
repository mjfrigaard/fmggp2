#' Blockbuster theme
#'
#' A late 90s `ggplot2` theme modeled on a Blockbuster Video store: royal
#' blue background, yellow ticket stub marks, white Arial text, and an
#' Impact title.
#'
#' Use `mode = "light"` for a light background with darker text and marks.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Impact when it's
#'     available on the system, otherwise `"sans"`.
#' @param mode `"dark"` (the default) or `"light"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = rpois(60, 3)), aes(x = x)) +
#'   geom_dotplot(binwidth = 1) +
#'   labs(title = "Blockbuster") +
#'   theme_blockbuster(base_family = "sans", title_family = "sans")
theme_blockbuster <- function(base_size = 15,
                              base_family = register_font("Arial", "Arial.ttf",
                                                          "Arial Bold.ttf"),
                              title_family = register_font("Impact", "Impact.ttf"),
                              mode = c("dark", "light")) {
  mode <- match.arg(mode)
  cols <- blockbuster_cols[[mode]]
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["white"]]),
      plot.background = ggplot2::element_rect(fill = cols[["blue"]],
                                              colour = cols[["yellow"]],
                                              linewidth = base_size / 3),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family,
                                         colour = cols[["yellow"]],
                                         size = ggplot2::rel(1.4)),
      plot.subtitle = ggplot2::element_text(colour = cols[["white"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["navy"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linewidth = 0.3),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["white"]]),
      axis.ticks = ggplot2::element_blank(),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["blue"]], colour = NA),
      # yellow first, then white and light blue for discrete fills and colours
      palette.fill.discrete = unname(cols[c("yellow", "white", "sky")]),
      palette.colour.discrete = unname(cols[c("yellow", "white", "sky")]),
      # yellow marks by default
      geom = ggplot2::element_geom(ink = cols[["white"]],
                                   paper = cols[["navy"]],
                                   accent = cols[["yellow"]],
                                   colour = cols[["yellow"]],
                                   fill = cols[["yellow"]],
                                   family = base_family)
    )
}

blockbuster_cols <- list(
  dark = c(
    blue = "#0B3A8C",
    navy = "#072A6B",
    grid = "#2F5BA8",
    sky = "#7FB2FF",
    yellow = "#FFD200",
    white = "#FFFFFF"
  ),
  # the light palette keeps the dark role names
  light = c(
    blue = "#E7EAFB",
    navy = "#F9FAFF",
    grid = "#D3D6EA",
    sky = "#5992DF",
    yellow = "#896300",
    white = "#252B44"
  )
)
