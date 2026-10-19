#' fmggp2 Styling Theme
#'
#' Applies a custom styling theme for ggplot2 charts, inspired by
#' theme_minimal() and theme_void() from ggplot2, with adjustments to panels,
#' margins, and legends to incorporate the Ubuntu font and customized visual
#' elements.
#'
#' @param base_size The base font size for text elements. Defaults to 15.
#' @param base_family The base font family for text elements. Defaults to
#'     NULL.
#' @param base_line_size The default size for line elements, calculated as a
#'      proportion of the base_size. Defaults to base_size / 22.
#' @param base_rect_size The default size for rectangle elements, calculated
#'      as a proportion of the base_size. Defaults to base_size / 22.
#'
#' @return A ggplot2 theme object that can be applied to ggplot2 charts to
#'      enforce the fmggp2 style.
#'
#' @export
#'
#' @section Theme Elements:
#' The function defines a suite of ggplot2 theme settings that include text,
#' axis, panel, and legend formatting:
#'
#' *  Text elements use the specified `base_family` font
#'
#' *  The size is set relative to the `base_size` parameter
#'
#' *  Axis titles and text are positioned and sized for clarity
#'
#' *  Tick marks are removed for a cleaner look
#'
#' *  Panel grids are defined with subtle lines
#'
#' *  Strip text and background are styled to differentiate facets
#'
#' *  The plot title, subtitle, caption, and tag are formatted for prominence and readability
#'
#' *  Legend aesthetics are simplified, with font sizes relative to the base size and unobtrusive margins
#'
#' *  The overall plot margin is adjusted for a balanced layout.
#'
#' @examples
#' # Apply the theme to a ggplot object
#' require(ggplot2)
#' ggplot(data = mpg, aes(x = class, fill = class)) +
#'   geom_bar() +
#'   theme_fmggp2(base_size = 15)
#'
#' @seealso \code{\link[ggplot2]{theme_minimal}}, \code{\link[ggplot2]{theme_void}}
theme_fmggp2 <- function(base_size = 15, base_family = "Ubuntu",
                        base_line_size = base_size / 22,
                        base_rect_size = base_size / 22) {

  import_fmggp2_fonts()
  showtext::showtext_auto()
  half_line <- base_size / 2
  # most of this is borrowed from theme_minimal()/theme_void(), but with some
  # adjustments to panel, margins, and legend see the original here:
  # https://github.com/tidyverse/ggplot2/blob/d9f179b038f020158773fac54af9a84cf961b54b/R/theme-defaults.r#L459
  thm <- ggplot2::theme(
    # RECTANGLE ----------------------------------------------------
    rect =               ggplot2::element_blank(),
    # TEXT ---------------------------------------------------------
    text =               ggplot2::element_text(
                            family = "Ubuntu",
                            # face = "plain",
                            colour = "black",
                            size = base_size,
                            lineheight = 0.9,
                            hjust = 0.5, vjust = 0.5,
                            angle = 0,
                            margin = ggplot2::margin(),
                            debug = FALSE),
    ## AXES --------------------------------------------------------------
    axis.text =          ggplot2::element_text(
                            family = base_family, size = ggplot2::rel(0.65)),
    axis.title.x =       ggplot2::element_text(vjust = -4.75),
    axis.title.y =       ggplot2::element_text(vjust = 4.25, angle = 90),
    axis.title =         ggplot2::element_text(size = ggplot2::rel(0.8)),
    ### AXIS TICKS ----
    ## remove all axis ticks
    ## https://ggplot2-book.org/polishing.html#theme-axis
    axis.ticks.length =  ggplot2::unit(0, "pt"),
    axis.ticks.length.x = NULL,
    axis.ticks.length.x.top = NULL,
    axis.ticks.length.x.bottom = NULL,
    axis.ticks.length.y = NULL,
    axis.ticks.length.y.left = NULL,
    axis.ticks.length.y.right = NULL,
    ## STRIP ----
    ##
    strip.clip =         "inherit",
    strip.text.x =         ggplot2::element_text(size = ggplot2::rel(0.7)),
    # strip.text.x affects both facet_wrap() or facet_grid()
    strip.text.y =         ggplot2::element_text(size = ggplot2::rel(0.7)),
    # strip.text.y only affects facet_grid()
    strip.switch.pad.grid = ggplot2::unit(half_line / 2, "pt"),
    strip.switch.pad.wrap = ggplot2::unit(half_line / 2, "pt"),
    strip.background = ggplot2::element_rect(fill = "#d0d0d0"),
    ## PANEL ----
    ## here we introduce thin, light gray lines for the graph area (with
    ## vertical lines slightly larger than horizontal lines)
    ## https://ggplot2-book.org/polishing.html#panel-elements
    panel.ontop =        FALSE,
    panel.spacing =      ggplot2::unit(half_line, "pt"),
    panel.grid.major.x = ggplot2::element_line(color = "#d0d0d0", linewidth = 0.3),
    panel.grid.major.y = ggplot2::element_line(color = "#d0d0d0", linewidth = 0.3),
    panel.grid.minor.x = ggplot2::element_line(color = "#d0d0d0", linewidth = 0.1),
    panel.grid.minor.y = ggplot2::element_line(color = "#d0d0d0", linewidth = 0.1),
    ## TITLES ----
    ### Title -----
    # location of title
    plot.title.position = "panel",
    ## slightly larger text
    plot.title =         ggplot2::element_text(
                           size = ggplot2::rel(1.1),
                           hjust = 0, vjust = 2,
                           margin = ggplot2::margin(b = half_line)
                         ),
    ### subtitle -----
    # slightly smaller text, italic
    plot.subtitle =      ggplot2::element_text(
                           size = ggplot2::rel(0.9),
                           hjust = 0, vjust = 2,
                           margin = ggplot2::margin(b = half_line)
                         ),
    ### caption -----
    plot.caption =       ggplot2::element_text(
                           size = ggplot2::rel(0.8),
                           hjust = 1, vjust = 1,
                           margin = ggplot2::margin(b = half_line)
                         ),

    plot.caption.position = "panel",
    ### tag -----
    plot.tag =           ggplot2::element_text(
                           size = ggplot2::rel(1.2),
                           hjust = 0.5, vjust = 0.5
                         ),
    plot.tag.position =  'topleft',
    ## LEGEND ----
    ## https://ggplot2-book.org/polishing.html#legend-elements
    # legend.direction =   "",
    # legend.box.just =    "",
    legend.box =         NULL,
    legend.key.size =    ggplot2::unit(1.2, "lines"),
        # the positioning is = c(horizontal, vertical)
        # c(1, 0) = bottom right
        # c(0.5, 0.5) = dead center
        # c(0, 1) = top left
        # https://ggplot2-book.org/scale-colour.html#legend-layout
    # legend.position =    c(1, 0.5), # c(horizontal, vertical)
    # legend.justification = c(-0.015, 0.0), # c(horizontal, vertical)
    legend.text =        ggplot2::element_text(
                            size = ggplot2::rel(0.60)),
    legend.title =       ggplot2::element_text(
                            size = ggplot2::rel(0.70),
                            hjust = 0),
    # legend.margin =      ggplot2::unit(c(1.5, 1.5, 1.5, 1.5), "mm"),
    legend.margin =      ggplot2::margin(t = 2.5, r = 2.5, b = 2.5, l = 2.5),
    ## PLOT MARGIN ----
    ## https://ggplot2-book.org/polishing.html#plot-elements
    plot.margin =        ggplot2::unit(x = c(1.5, 5.0, 1.5, 1.5), "lines"),
    complete = TRUE
 )
  return(thm)
}

