#' J2ME theme
#'
#' A `ggplot2` theme built from a Nokia N73 running a J2ME app: a black phone
#' background, a silver frame, a pale screen panel, Ushahidi red, tan, brown,
#' and black marks, and an Arial Narrow title.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Arial Narrow when
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
#'   labs(title = "J2ME") +
#'   theme_j2me(base_family = "sans", title_family = "sans")
theme_j2me <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Arial Narrow", "Arial Narrow Bold.ttf")) {
  cols <- j2me_cols
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["screen"]]),
      plot.background = ggplot2::element_rect(fill = cols[["black"]],
                                              colour = cols[["silver"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family, face = "bold",
                                         colour = cols[["screen"]],
                                         size = ggplot2::rel(1.5)),
      plot.subtitle = ggplot2::element_text(colour = cols[["screen"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["screen"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["screen"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["black"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["screen"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["screen"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = unname(cols[c("red", "tan", "brown", "black")]),
      palette.colour.discrete = unname(cols[c("red", "tan", "brown", "black")]),
      # default marks
      geom = ggplot2::element_geom(ink = cols[["black"]],
                                   paper = cols[["screen"]],
                                   accent = cols[["tan"]],
                                   colour = cols[["black"]],
                                   fill = cols[["red"]],
                                   family = base_family)
    )
}

# A Nokia N73 running the Ushahidi J2ME app
j2me_cols <- c(
  black = "#15110E",
  screen = "#C7D9E1",
  grid = "#A9BEC8",
  silver = "#9A9791",
  red = "#960000",
  tan = "#BF9155",
  brown = "#6C3C24"
)
