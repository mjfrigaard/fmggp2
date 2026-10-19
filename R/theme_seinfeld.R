#' Seinfeld theme
#'
#' A `ggplot2` theme built from the Seinfeld logo: the black drop shadow
#' background, a yellow frame, a red American Typewriter title, white text,
#' and yellow, red, cyan, and white marks.
#'
#' Use `mode = "light"` for the logo's yellow oval as the background, with a
#' black frame, a white panel, black text, and red, cyan, yellow, and black
#' marks outlined in black.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to American Typewriter when
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
#'   labs(title = "Seinfeld") +
#'   theme_seinfeld(base_family = "sans", title_family = "sans")
theme_seinfeld <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("American Typewriter", "AmericanTypewriter.ttc"),
                      mode = c("dark", "light")) {
  mode <- match.arg(mode)
  cols <- seinfeld_cols[[mode]]
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
      palette.fill.discrete = seinfeld_marks[[mode]],
      palette.colour.discrete = seinfeld_marks[[mode]],
      # default marks
      geom = ggplot2::element_geom(ink = cols[["text"]],
                                   paper = cols[["panel"]],
                                   accent = cols[["title"]],
                                   colour = cols[["outline"]],
                                   fill = cols[["fill"]],
                                   family = base_family)
    )
}

# the Seinfeld logo: a yellow oval, red letters, a cyan dot over the i, and a
# black drop shadow
seinfeld_cols <- list(
  dark = c(
    background = "#0F0803",
    panel = "#1F1A16",
    grid = "#3D352D",
    text = "#FFFFFF",
    frame = "#F7D524",
    title = "#EC1D2F",
    strip = "#F7D524",
    striptext = "#0F0803",
    outline = "#F7D524",
    fill = "#F7D524"
  ),
  light = c(
    background = "#F7D524",
    panel = "#FFFFFF",
    grid = "#F1E6B8",
    text = "#0F0803",
    frame = "#0F0803",
    title = "#EC1D2F",
    strip = "#EC1D2F",
    striptext = "#FFFFFF",
    outline = "#0F0803",
    fill = "#EC1D2F"
  )
)

seinfeld_marks <- list(
  dark = c("#F7D524", "#EC1D2F", "#2EB8CA", "#FFFFFF"),
  light = c("#EC1D2F", "#2EB8CA", "#F7D524", "#0F0803")
)
