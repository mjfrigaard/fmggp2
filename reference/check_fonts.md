# Check for Required Fonts

Checks whether the required fonts are installed on the system.

## Usage

``` r
check_fonts(font = NULL)
```

## Arguments

- font:

  An optional additional font to include in the check.

## Value

`TRUE` if all required fmggp2 fonts (and `font`, if supplied) are
installed. Otherwise, it calls
[`check_assets()`](https://mjfrigaard.github.io/fmggp2/reference/check_assets.md)
to report the missing fonts.

## Examples

``` r
check_fonts()
#> [1] TRUE
check_fonts(font = "New Font")
#> Font not included in /home/runner/work/_temp/Library/fmggp2//assets.
#> ℹ Download the 'New Font' .ttf files
#> ℹ and install with `extrafont::font_import()`
```
