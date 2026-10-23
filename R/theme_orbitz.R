#' Orbitz theme
#'
#' A `ggplot2` theme built from Orbitz, the 1997 drink with floating balls:
#' a black background, a gold frame, gold and magenta ball marks, sand,
#' maroon, and amber accents, and a Marker Felt title.
#'
#' Use `mode = "light"` for a light background with darker text and marks.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Marker Felt when
#'     it's available, otherwise `"sans"`.
#' @param mode `"dark"` (the default) or `"light"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Orbitz") +
#'   theme_orbitz(base_family = "sans", title_family = "sans")
theme_orbitz <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Marker Felt", "MarkerFelt.ttc",
                                                  dir = "/System/Library/Fonts"),
                      mode = c("dark", "light")) {
  mode <- match.arg(mode)
  cols <- orbitz_cols[[mode]]
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["cream"]]),
      plot.background = ggplot2::element_rect(fill = cols[["black"]],
                                              colour = cols[["gold"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family,
                                         colour = cols[["gold"]],
                                         size = ggplot2::rel(1.6)),
      plot.subtitle = ggplot2::element_text(colour = cols[["cream"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["panel"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["cream"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["magenta"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["strip"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["black"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = unname(cols[c("gold", "magenta", "sand", "maroon", "amber", "navy")]),
      palette.colour.discrete = unname(cols[c("gold", "magenta", "sand", "maroon", "amber", "navy")]),
      # default marks
      geom = ggplot2::element_geom(ink = cols[["cream"]],
                                   paper = cols[["panel"]],
                                   accent = cols[["magenta"]],
                                   colour = cols[["black"]],
                                   fill = cols[["gold"]],
                                   family = base_family)
    )
}

# an Orbitz bottle: gold and magenta balls in clear liquid
orbitz_cols <- list(
  dark = c(
    black = "#070506",
    panel = "#1F201E",
    grid = "#3A3A36",
    cream = "#E2E0DB",
    gold = "#EFBA09",
    magenta = "#E21D73",
    sand = "#E0C66C",
    maroon = "#A20549",
    amber = "#B27F20",
    navy = "#163F6F",
    strip = "#070506"
  ),
  # the light palette keeps the dark role names
  light = c(
    black = "#F0EAE2",
    panel = "#FDFAF7",
    grid = "#DDD6CC",
    cream = "#372A0B",
    gold = "#8D5F00",
    magenta = "#CF0063",
    sand = "#8E7600",
    maroon = "#A20549",
    amber = "#B27F20",
    navy = "#163F6F",
    strip = "#FDFAF7"
  )
)
