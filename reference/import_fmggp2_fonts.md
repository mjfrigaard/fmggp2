# Import fmggp2 Package Fonts

The function first calls `check_fonts` to determine if the necessary
fonts are installed. If all fonts are installed, it prints a message and
exits. If any fonts are missing, it retrieves the font assets path from
`font_path` and uses
[`extrafont::font_import`](https://rdrr.io/pkg/extrafont/man/font_import.html)
to import the fonts into the system without prompting the user,
following a procedure similar to the one used in the hrbrthemes package.

## Usage

``` r
import_fmggp2_fonts()
```

## Value

The function returns invisibly. If all fonts are installed, it simply
prints an informational message. If fonts are missing and the import is
successful, no output is generated.

## Details

This function checks for the required Ubuntu fonts used in the fmggp2
package and imports them if they are not already installed.

## Note

The function is designed to work without user interaction. It assumes
that the font files are present in the specified `assets` directory of
the fmggp2 package. It is dependent on the `extrafont` package for the
font import process.

## Examples

``` r
import_fmggp2_fonts()
```
