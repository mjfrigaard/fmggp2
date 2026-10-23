#' Fresh Prince theme
#'
#' A late 90s `ggplot2` theme modeled on The Fresh Prince of Bel-Air logo: a
#' pink glow background, a graffiti green frame and title, green, teal, lime,
#' and olive marks, and an Arial Black title. Continuous fills run from teal
#' to lime.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Arial Black when
#'     it's available on the system, otherwise `"sans"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(expand.grid(x = 1:3, y = 1:3), aes(x = x, y = y, fill = x * y)) +
#'   geom_tile() +
#'   labs(title = "Fresh Prince") +
#'   theme_freshprince(base_family = "sans", title_family = "sans")
theme_freshprince <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Arial Black", "Arial Black.ttf")) {
  cols <- freshprince_cols
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["olive"]]),
      plot.background = ggplot2::element_rect(fill = cols[["glow"]],
                                              colour = cols[["green"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family,
                                         colour = cols[["title"]],
                                         size = ggplot2::rel(1.4)),
      plot.subtitle = ggplot2::element_text(colour = cols[["olive"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["panel"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["olive"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["green"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["olive"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["glow"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = unname(cols[c("green", "teal", "lime", "olive")]),
      palette.colour.discrete = unname(cols[c("green", "teal", "lime", "olive")]),
      # teal to lime for continuous fills
      palette.fill.continuous = unname(cols[c("teal", "lime")]),
      # default marks
      geom = ggplot2::element_geom(ink = cols[["olive"]],
                                   paper = cols[["panel"]],
                                   accent = cols[["teal"]],
                                   colour = cols[["olive"]],
                                   fill = cols[["green"]],
                                   family = base_family)
    )
}

# the Fresh Prince of Bel-Air logo: graffiti greens, a cyan Bel-Air, and a
# pink glow
freshprince_cols <- c(
  glow = "#FBD5F0",
  panel = "#FFFFFF",
  grid = "#F4BDE3",
  green = "#3CD039",
  title = "#009200",
  lime = "#BCF22A",
  teal = "#33B6B7",
  olive = "#3A4D21"
)
