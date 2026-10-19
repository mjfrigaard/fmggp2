#' AIM theme
#'
#' A late 90s `ggplot2` theme modeled on the AOL Instant Messenger sign on
#' window: a gray window, an AOL blue frame and title, a white chat panel,
#' blue, sky, running man yellow, and slate marks, and an Arial Rounded
#' title.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Arial Rounded when
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
#'   labs(title = "AIM") +
#'   theme_aim(base_family = "sans", title_family = "sans")
theme_aim <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Arial Rounded", "Arial Rounded Bold.ttf")) {
  cols <- aim_cols
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["ink"]]),
      plot.background = ggplot2::element_rect(fill = cols[["window_gray"]],
                                              colour = cols[["blue"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family,
                                         colour = cols[["blue"]],
                                         size = ggplot2::rel(1.4)),
      plot.subtitle = ggplot2::element_text(colour = cols[["ink"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["window"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["ink"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["blue"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["yellow"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["window_gray"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = unname(cols[c("blue", "sky", "yellow", "slate")]),
      palette.colour.discrete = unname(cols[c("blue", "sky", "yellow", "slate")]),
      # default marks
      geom = ggplot2::element_geom(ink = cols[["ink"]],
                                   paper = cols[["window"]],
                                   accent = cols[["blue"]],
                                   colour = cols[["blue"]],
                                   fill = cols[["sky"]],
                                   family = base_family)
    )
}

aim_cols <- c(
  window_gray = "#CBCBCC",
  blue = "#021BA1",
  window = "#FFFFFF",
  grid = "#E1E8F5",
  ink = "#13151D",
  sky = "#396AE1",
  yellow = "#F1D359",
  slate = "#525F71"
)
