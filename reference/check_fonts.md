# Check for Required Fonts

Checks if the required fonts are installed in the system or not.

## Usage

``` r
check_fonts(font = NULL)
```

## Arguments

- font:

  Optionally specify an additional font to include in the check.

## Value

Returns TRUE if all required fmggp2 fonts and the optionally specified
font are installed. If not, calls check_assets to inform about missing
fonts.

## Examples

``` r
check_fonts()
#> [1] TRUE
check_fonts(font = "New Font")
#> Font not included in /home/runner/work/_temp/Library/fmggp2//assets.
#> ℹ Download the 'New Font' .ttf files
#> ℹ and install with `extrafont::font_import()`
```
