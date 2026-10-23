# Import fmggp2 Package Fonts

The function first calls
[`check_fonts()`](https://mjfrigaard.github.io/fmggp2/reference/check_fonts.md)
to see whether the fonts are installed. If they are, it prints a message
and exits. If any fonts are missing, it gets the font assets path from
[`font_path()`](https://mjfrigaard.github.io/fmggp2/reference/font_path.md)
and imports the fonts with
[`extrafont::font_import()`](https://rdrr.io/pkg/extrafont/man/font_import.html)
without prompting the user (similar to the approach in the `hrbrthemes`
package).

## Usage

``` r
import_fmggp2_fonts()
```

## Value

The function returns invisibly. If all fonts are installed, it prints an
informational message. If fonts are missing and the import succeeds, it
prints nothing.

## Details

Checks for the Ubuntu fonts the fmggp2 package uses and imports them if
they aren't already installed.

## Note

The function runs without user interaction. It assumes the font files
are in the `assets` directory of the fmggp2 package, and it depends on
`extrafont` to import them.

## Examples

``` r
import_fmggp2_fonts()
```
