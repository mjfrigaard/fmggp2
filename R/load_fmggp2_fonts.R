#' Load Ubuntu Fonts for fmggp2 Package
#'
#' Imports the Ubuntu font from the `fmggp2` package assets, adds it to the
#' available system fonts, and turns on automatic font loading with
#' `showtext` so graphs can use it.
#'
#' @return Invisible `NULL`. The function is called for its side effects.
#'
#' @export
#'
#' @section Fonts Import:
#' `extrafont::font_import()` imports the fonts, which makes them available
#' in PDF and PostScript graphics. The import runs without prompting the user.
#'
#' @section Fonts Addition:
#' Once imported, the Ubuntu font is added to the available system fonts with
#' `sysfonts::font_add()`.
#'
#' @section Enabling Font in Graphics:
#' Finally, `showtext::showtext_auto()` turns on automatic font rendering, so
#' graphics devices use the font right away.
#'
#' @seealso \code{\link[extrafont]{font_import}},
#' \code{\link[sysfonts]{font_add}},
#' \code{\link[showtext]{showtext_auto}}
load_fmggp2_fonts <- function() {
  font_check <- check_fonts()
  if (font_check) {
    invisible()
  } else {
    import_fmggp2_fonts()
    # import all fonts in assets/ folder
    # add Ubuntu fonts
    suppressMessages(
      suppressWarnings(
        add_fonts("Ubuntu")
        )
      )
  }
}

#' Check Assets in Specified Directory
#'
#' Checks a directory for the required assets, relative to the fmggp2 package's assets directory.
#'
#' @param dir The directory path to check for required assets.
#' @param include_path Logical; if `TRUE`, the full names of directories are included.
#' @param recursive Logical; if `TRUE`, the directory check is recursive.
#'
#' @return `TRUE` if the assets in `dir` match the package's assets.
#' Otherwise, it lists the missing font files and tells the user how to install them.
#'
#' @export
#'
#' @examples
#' check_assets(dir = "path/to/assets")
check_assets <- function(dir, include_path = FALSE, recursive = FALSE) {
  asset_check <- list.dirs(system.file("assets", package = "fmggp2"),
                           full.names = include_path,
                           recursive = recursive)
    if (all(asset_check == dir)) {
        return(TRUE)
      } else {
        need_font_files <- setdiff(dir, asset_check)
        local_assets <- paste(system.file("", package = "fmggp2"), "assets",
                                   sep = "/")
        cli::cli_text("Font not included in {.file {local_assets}}.")
        cli::cli_alert_info("Download the '{need_font_files}' .ttf files")
        cli::cli_alert_info("and install with `extrafont::font_import()`")
      }
}

#' List Available Fonts
#'
#' Lists all TrueType font files available in the fmggp2 package's assets directory.
#'
#' @param include_path Logical; if `TRUE`, the full paths of font files are returned.
#'
#' @return A character vector of font file names. If `include_path` is
#' `TRUE`, the paths are included.
#'
#' @export
#'
#' @examples
#' list_fonts()
#' list_fonts(include_path = TRUE)
list_fonts <- function(include_path = FALSE) {
  font_pth <- system.file("assets", package = "fmggp2")

  if (include_path) {
    font_files <- list.files(path = font_pth,
                             pattern = ".ttf$",
                             full.names = TRUE,
                             recursive = TRUE)
    mapply(gsub,
      x = font_files,
      SIMPLIFY = TRUE,
      MoreArgs = list(pattern = font_pth, replacement = ""),
      USE.NAMES = FALSE)

  } else {
   font_files <- list.files(path = font_pth,
                             pattern = ".ttf$",
                             full.names = TRUE,
                             recursive = TRUE)
    mapply(basename,
          font_files,
          SIMPLIFY = TRUE,
          USE.NAMES = FALSE)


  }
}

#' Check for Required Fonts
#'
#' Checks whether the required fonts are installed on the system.
#'
#' @param font An optional additional font to include in the check.
#'
#' @return `TRUE` if all required fmggp2 fonts (and `font`, if supplied) are installed.
#' Otherwise, it calls `check_assets()` to report the missing fonts.
#'
#' @export
#'
#' @examples
#' check_fonts()
#' check_fonts(font = "New Font")
check_fonts <- function(font = NULL) {
  if (!is.null(font)) {
    fmggp2_fonts <- paste(c("Ubuntu", "Ubuntu Light", "Ubuntu Medium", font))
  } else {
    fmggp2_fonts <- paste(c("Ubuntu", "Ubuntu Light", "Ubuntu Medium"))
  }
  loaded_fnts <- extrafont::fonts()
  if (all(fmggp2_fonts %in% loaded_fnts)) {
    return(TRUE)
  } else {
    check_assets(dir = font)
  }
}

#' Get Font Path
#'
#' Retrieves the path to the font assets in the fmggp2 package.
#'
#' @return The file path to the font assets directory in the fmggp2 package.
#'
#' @export
#'
#' @examples
#' font_path()
font_path <- function() {
  system.file("assets", package = "fmggp2")
}

#' Add Fonts to the System
#'
#' Adds TrueType fonts from the fmggp2 package to the available system fonts.
#'
#' @param font The name of the font to add to the system.
#' @param ... Additional arguments passed to `sysfonts::font_add()`.
#'
#' @return Invisibly returns `NULL` if the font is already installed or after the font is added.
#' If the font isn't found, the function displays an error message and aborts.
#'
#' @export
#'
#' @examples
#' add_fonts("Ubuntu")
add_fonts <- function(font, ...) {
  font_pth <- font_path()
  fonts <- list.files(font_pth,
    pattern = font, ignore.case = TRUE,
    full.names = TRUE, recursive = TRUE
  )
  if (length(fonts) == 0) {
    cli::cli_alert_warning("'{font}' font not installed")
    cli::cli_abort("Download {font} and install with `extrafont::font_import()`")
  }

  loaded_fonts <- extrafont::fonts()

  if (all(font %in% loaded_fonts)) {
    cli::cli_inform("{font} already installed")
  } else {
    regular_font <- grep(
      pattern = "Regular",
      x = fonts,
      ignore.case = TRUE,
      value = TRUE
    )
    if (file.exists(regular_font)) {
      sysfonts::font_add(
        family = font,
        regular = regular_font,
        ...
      )
    }
  }
}

#' Import fmggp2 Package Fonts
#'
#' Checks for the Ubuntu fonts the fmggp2 package uses and imports them if
#' they aren't already installed.
#'
#' @description The function first calls `check_fonts()` to see whether the
#' fonts are installed. If they are, it prints a message and exits. If any
#' fonts are missing, it gets the font assets path from `font_path()` and
#' imports the fonts with `extrafont::font_import()` without prompting the
#' user (similar to the approach in the `hrbrthemes` package).
#'
#' @return The function returns invisibly. If all fonts are installed, it prints
#' an informational message. If fonts are missing and the import succeeds, it
#' prints nothing.
#'
#' @export
#'
#' @section Note:
#' The function runs without user interaction. It assumes the font files are
#' in the `assets` directory of the fmggp2 package, and it depends on
#' `extrafont` to import them.
#'
#' @examples
#' import_fmggp2_fonts()
import_fmggp2_fonts <- function() {
      assets_font_pth <- font_path()
    # import fonts like the function in hrbrthemes
    # https://github.com/hrbrmstr/hrbrthemes/blob/3e8d9494a9e0026a3127f6a0df88208511cd0715/R/roboto-condensed.r#L208
    suppressMessages(
      suppressWarnings(
        extrafont::font_import(
            paths = assets_font_pth,
            recursive = TRUE,
            prompt = FALSE
          )
        )
      )
  showtext::showtext_auto()

}
