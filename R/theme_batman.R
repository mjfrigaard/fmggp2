#' Batman theme
#'
#' A `ggplot2` theme built from three Batman color palettes:
#'
#' * `"movie"`: Batman (1989), with a black background, a gold bat signal
#'   frame and title, a dark brown plot area, silver text, and orange, gold,
#'   steel, rust, and pale gold marks.
#' * `"classic"`: the 1966 TV series, with a gray background, a black frame,
#'   a blue title, a cream plot area, and blue, yellow, black, and gray marks.
#' * `"darknight"`: The Dark Knight, with a charcoal background, a yellow
#'   frame and title, a navy plot area, and yellow, olive, and slate marks.
#'
#' All three use a DIN Condensed title. Use `mode = "light"` for a light
#' version of `"movie"` or `"darknight"`; `"classic"` is already light, so
#' `mode` doesn't change it.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to DIN Condensed when
#'     it's available, otherwise `"sans"`.
#' @param version One of `"movie"`, `"classic"`, or `"darknight"`.
#' @param mode `"dark"` (the default) or `"light"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' p <- ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Batman")
#' p + theme_batman(base_family = "sans", title_family = "sans")
#' p + theme_batman(base_family = "sans", title_family = "sans",
#'                  version = "classic")
#' p + theme_batman(base_family = "sans", title_family = "sans",
#'                  version = "darknight")
#' p + theme_batman(base_family = "sans", title_family = "sans",
#'                  mode = "light")
theme_batman <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("DIN Condensed", "DIN Condensed Bold.ttf"),
                      version = c("movie", "classic", "darknight"),
                      mode = c("dark", "light")) {
  version <- match.arg(version)
  mode <- match.arg(mode)
  key <- if (mode == "light" && version != "classic") paste0(version, "_light") else version
  cols <- batman_cols[[key]]
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["text"]]),
      plot.background = ggplot2::element_rect(fill = cols[["background"]],
                                              colour = cols[["frame"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family,
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
      strip.background = ggplot2::element_rect(fill = cols[["frame"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["background"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["background"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = batman_marks[[key]],
      palette.colour.discrete = batman_marks[[key]],
      # default marks
      geom = ggplot2::element_geom(ink = cols[["text"]],
                                   paper = cols[["panel"]],
                                   accent = cols[["title"]],
                                   colour = cols[["outline"]],
                                   fill = cols[["fill"]],
                                   family = base_family)
    )
}

# the Batman (1989) palette swatches, the 1966 TV series, and The Dark Knight,
# plus light versions of the movie and The Dark Knight
batman_cols <- list(
  movie = c(
    background = "#050203",
    frame = "#F9BB2C",
    title = "#F9BB2C",
    panel = "#2E2017",
    grid = "#5A4B44",
    text = "#E9EBE8",
    outline = "#050203",
    fill = "#E96A23"
  ),
  movie_light = c(
    background = "#F1EAE2",
    frame = "#925E00",
    title = "#925E00",
    panel = "#FDFAF7",
    grid = "#DED6CD",
    text = "#392A0D",
    outline = "#F1EAE2",
    fill = "#E96A23"
  ),
  classic = c(
    background = "#C6C6C6",
    frame = "#000000",
    title = "#58C0F9",
    panel = "#FCEACB",
    grid = "#C6C6C6",
    text = "#000000",
    outline = "#000000",
    fill = "#58C0F9"
  ),
  darknight = c(
    background = "#292929",
    frame = "#FEFD55",
    title = "#FEFD55",
    panel = "#2D323D",
    grid = "#535D79",
    text = "#FEFD55",
    outline = "#292929",
    fill = "#94873D"
  ),
  darknight_light = c(
    background = "#ECECE1",
    frame = "#6E6E00",
    title = "#6E6E00",
    panel = "#FBFBF7",
    grid = "#D8D8CB",
    text = "#4F4E00",
    outline = "#ECECE1",
    fill = "#94873D"
  )
)

batman_marks <- list(
  movie = c("#E96A23", "#F9BB2C", "#8C939B", "#A95B2B", "#F3D07F", "#F48E20"),
  classic = c("#58C0F9", "#FFFD62", "#000000", "#C6C6C6"),
  darknight = c("#FEFD55", "#94873D", "#535D79"),
  movie_light = c("#E96A23", "#BF8600", "#899098", "#A95B2B", "#AD8C29", "#D97600"),
  darknight_light = c("#979700", "#94873D", "#535D79")
)
