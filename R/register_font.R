# Register a system font with sysfonts and return its family name, or
# "sans" when the font files can't be found. Used by the 90s themes.
register_font <- function(family, regular, bold = NULL,
                          dir = "/System/Library/Fonts/Supplemental") {
  regular <- file.path(dir, regular)
  if (!is.null(bold)) {
    bold <- file.path(dir, bold)
  }
  if (!file.exists(regular) || (!is.null(bold) && !file.exists(bold))) {
    return("sans")
  }
  if (is.null(bold)) {
    sysfonts::font_add(family = family, regular = regular)
  } else {
    sysfonts::font_add(family = family, regular = regular, bold = bold)
  }
  family
}
