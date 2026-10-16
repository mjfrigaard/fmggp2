#' Clueless theme
#'
#' A `ggplot2` theme built from Cher's yellow plaid in Clueless: a plaid
#' yellow background, a black frame, a cornsilk panel, black, red, tartan
#' green, navy, and gray marks, and a Didot title.
#'
#' @param base_size Base font size. Defaults to `11`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Didot when
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
#'   labs(title = "Clueless") +
#'   theme_clueless(base_family = "sans", title_family = "sans")
theme_clueless <- function(base_size = 11,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Didot", "Didot.ttc")) {
  cols <- clueless_cols
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["black"]]),
      plot.background = ggplot2::element_rect(fill = cols[["plaid"]],
                                              colour = cols[["black"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family,
                                         colour = cols[["black"]],
                                         size = ggplot2::rel(1.5)),
      plot.subtitle = ggplot2::element_text(colour = cols[["black"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["silk"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["black"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["black"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["plaid"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["plaid"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = unname(cols[c("black", "red", "tartan", "navy", "gray")]),
      palette.colour.discrete = unname(cols[c("black", "red", "tartan", "navy", "gray")]),
      # default marks
      geom = ggplot2::element_geom(ink = cols[["black"]],
                                   paper = cols[["silk"]],
                                   accent = cols[["red"]],
                                   colour = cols[["black"]],
                                   fill = cols[["black"]],
                                   family = base_family)
    )
}

# Cher's yellow plaid suit
clueless_cols <- c(
  plaid = "#F2D13E",
  silk = "#FFF8DC",
  grid = "#EADFA8",
  black = "#1A1A1A",
  red = "#C0392B",
  tartan = "#1E5631",
  navy = "#1F3A5F",
  gray = "#7F8C8D"
)

