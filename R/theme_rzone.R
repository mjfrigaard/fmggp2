#' Tiger R-Zone theme
#'
#' A `ggplot2` theme built from the Tiger R-Zone headset (1995): black
#' plastic, a red frame and title, red LCD, purple logo, and pink marks, a
#' pale blue visor text color, and an Arial Narrow title.
#'
#' Use `mode = "light"` for a light background with darker text and marks.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Arial Narrow when
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
#'   labs(title = "R-Zone") +
#'   theme_rzone(base_family = "sans", title_family = "sans")
theme_rzone <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Arial Narrow", "Arial Narrow Bold.ttf"),
                      mode = c("dark", "light")) {
  mode <- match.arg(mode)
  cols <- rzone_cols[[mode]]
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["visor"]]),
      plot.background = ggplot2::element_rect(fill = cols[["black"]],
                                              colour = cols[["red"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family,
                                         colour = cols[["red"]],
                                         size = ggplot2::rel(1.6)),
      plot.subtitle = ggplot2::element_text(colour = cols[["visor"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["panel"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["visor"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["purple"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["strip"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["black"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = unname(cols[c("red", "purple", "pink", "plum", "rose", "gray")]),
      palette.colour.discrete = unname(cols[c("red", "purple", "pink", "plum", "rose", "gray")]),
      # default marks
      geom = ggplot2::element_geom(ink = cols[["visor"]],
                                   paper = cols[["panel"]],
                                   accent = cols[["purple"]],
                                   colour = cols[["visor"]],
                                   fill = cols[["red"]],
                                   family = base_family)
    )
}

# the Tiger R-Zone headset and controller
rzone_cols <- list(
  dark = c(
    black = "#1D1D1E",
    panel = "#2F2E2F",
    grid = "#454345",
    visor = "#D7E4F4",
    red = "#F0382A",
    purple = "#9B73C0",
    pink = "#F9938A",
    plum = "#7F4E7D",
    rose = "#BF3A40",
    gray = "#848186",
    strip = "#1D1D1E"
  ),
  # the light palette keeps the dark role names
  light = c(
    black = "#F6E8E7",
    panel = "#FFFAF9",
    grid = "#E4D4D3",
    visor = "#422423",
    red = "#D31000",
    purple = "#8056A5",
    pink = "#D9756C",
    plum = "#7F4E7D",
    rose = "#BF3A40",
    gray = "#848186",
    strip = "#FFFAF9"
  )
)
