#' Seinfeld theme
#'
#' A `ggplot2` theme built from Seinfeld: a comedy club brick background,
#' a yellow frame and title, the yellow, red, blue, and green logo colors
#' for marks, cream text, and an American Typewriter title.
#'
#' Use `mode = "light"` for a light background with darker text and marks.
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
      text = ggplot2::element_text(colour = cols[["cream"]]),
      plot.background = ggplot2::element_rect(fill = cols[["brick"]],
                                              colour = cols[["yellow"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family,
                                         colour = cols[["yellow"]],
                                         size = ggplot2::rel(1.5)),
      plot.subtitle = ggplot2::element_text(colour = cols[["cream"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["wall"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["cream"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["yellow"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["brick"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["brick"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = unname(cols[c("yellow", "red", "blue", "green", "cream", "orange")]),
      palette.colour.discrete = unname(cols[c("yellow", "red", "blue", "green", "cream", "orange")]),
      # default marks
      geom = ggplot2::element_geom(ink = cols[["cream"]],
                                   paper = cols[["wall"]],
                                   accent = cols[["red"]],
                                   colour = cols[["yellow"]],
                                   fill = cols[["yellow"]],
                                   family = base_family)
    )
}

# the comedy club bricks and the logo letters
seinfeld_cols <- list(
  dark = c(
    brick = "#3B1E17",
    wall = "#4A2620",
    grid = "#6A3A30",
    cream = "#F5E6C8",
    yellow = "#F7C33C",
    red = "#E2402B",
    blue = "#4C8DDB",
    green = "#4CAF6A",
    orange = "#F08A24"
  ),
  # the light palette keeps the dark role names
  light = c(
    brick = "#FCE6E3",
    wall = "#FFF9F8",
    grid = "#EAD2CE",
    cream = "#41251E",
    yellow = "#8C6000",
    red = "#E2402B",
    blue = "#4C8DDB",
    green = "#3EA45F",
    orange = "#DB7800"
  )
)

