# Add Fonts to the System

Adds TrueType fonts from the fmggp2 package to the available system
fonts.

## Usage

``` r
add_fonts(font, ...)
```

## Arguments

- font:

  The name of the font to add to the system.

- ...:

  Additional arguments passed to
  [`sysfonts::font_add()`](https://rdrr.io/pkg/sysfonts/man/font_add.html).

## Value

Invisibly returns `NULL` if the font is already installed or after the
font is added. If the font isn't found, the function displays an error
message and aborts.

## Examples

``` r
add_fonts("Ubuntu")
#> Ubuntu already installed
```
