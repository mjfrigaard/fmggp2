#' CueCat theme
#'
#' A `ggplot2` theme built from the :CueCat barcode scanner: a pale paper
#' background, a putty frame, red, ink, LED orange, and putty marks, and a
#' red Marker Felt title.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Marker Felt when
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
#'   labs(title = "CueCat") +
#'   theme_cuecat(base_family = "sans", title_family = "sans")
theme_cuecat <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Marker Felt", "MarkerFelt.ttc",
                                                  dir = "/System/Library/Fonts")) {
  cols <- cuecat_cols
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["ink"]]),
      plot.background = ggplot2::element_rect(fill = cols[["paper"]],
                                              colour = cols[["putty"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family, face = "bold",
                                         colour = cols[["red"]],
                                         size = ggplot2::rel(1.5)),
      plot.subtitle = ggplot2::element_text(colour = cols[["ink"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["panel"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["ink"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["ink"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["panel"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["panel"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = unname(cols[c("red", "ink", "led", "putty")]),
      palette.colour.discrete = unname(cols[c("red", "ink", "led", "putty")]),
      # default marks
      geom = ggplot2::element_geom(ink = cols[["ink"]],
                                   paper = cols[["panel"]],
                                   accent = cols[["led"]],
                                   colour = cols[["ink"]],
                                   fill = cols[["red"]],
                                   family = base_family)
    )
}

# A :CueCat scanner on paper
cuecat_cols <- c(
  paper = "#D9D9D4",
  panel = "#F0F0EC",
  grid = "#C9C9C2",
  ink = "#3A3A36",
  putty = "#9C9C94",
  red = "#B0261C",
  led = "#E06753"
)
