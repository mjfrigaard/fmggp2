#' WIRED theme
#'
#' A `ggplot2` theme built from the WIRED (US) November/December 2024 "Big
#' Interview" cover: a black background, a white frame and title, a
#' Helvetica Neue title, and the cover's red, blue, pink, gray, and steel
#' blue marks.
#'
#' Use `mode = "light"` for a light gray background with a black frame,
#' black text, a white panel, and red, blue, pink, navy, and darker gray
#' marks.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Helvetica Neue when
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
#'   labs(title = "WIRED") +
#'   theme_wired(base_family = "sans", title_family = "sans")
theme_wired <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Helvetica Neue", "HelveticaNeue.ttc"),
                      mode = c("dark", "light")) {
  mode <- match.arg(mode)
  cols <- wired_cols[[mode]]
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["text"]]),
      plot.background = ggplot2::element_rect(fill = cols[["background"]],
                                              colour = cols[["frame"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family, face = "bold",
                                         colour = cols[["title"]],
                                         size = ggplot2::rel(1.5)),
      plot.subtitle = ggplot2::element_text(colour = cols[["text"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["panel"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["text"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["strip"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["striptext"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["background"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = wired_marks[[mode]],
      palette.colour.discrete = wired_marks[[mode]],
      # default marks
      geom = ggplot2::element_geom(ink = cols[["text"]],
                                   paper = cols[["panel"]],
                                   accent = cols[["accent"]],
                                   colour = cols[["outline"]],
                                   fill = cols[["fill"]],
                                   family = base_family)
    )
}

# the WIRED November/December 2024 cover: a black and white checkered
# masthead over red, blue, pink, gray, and steel blue shapes
wired_cols <- list(
  dark = c(
    background = "#040404",
    panel = "#141414",
    grid = "#2C2B28",
    text = "#FFFFFF",
    frame = "#FFFFFF",
    title = "#FFFFFF",
    strip = "#FFFFFF",
    striptext = "#040404",
    accent = "#0490E2",
    outline = "#040404",
    fill = "#E4180A"
  ),
  light = c(
    background = "#ECECEB",
    panel = "#FFFFFF",
    grid = "#D9D8D7",
    text = "#040404",
    frame = "#040404",
    title = "#040404",
    strip = "#040404",
    striptext = "#FFFFFF",
    accent = "#0490E2",
    outline = "#040404",
    fill = "#E4180A"
  )
)

wired_marks <- list(
  dark = c("#E4180A", "#0490E2", "#DA618C", "#ADACAA", "#529AB1"),
  light = c("#E4180A", "#0490E2", "#DA618C", "#05174F", "#767574")
)
