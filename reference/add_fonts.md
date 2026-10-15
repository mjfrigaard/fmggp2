# Add Fonts to the System

Adds specified TrueType fonts to the available system fonts from the
fmggp2 package.

## Usage

``` r
add_fonts(font, ...)
```

## Arguments

- font:

  The name of the font to add to the system.

- ...:

  Additional arguments passed to sysfonts::font_add.

## Value

Invisibly returns NULL if the font is already installed or after the
font is added. If the font is not found, an error message is displayed
and the function is aborted.

## Examples

``` r
add_fonts("Ubuntu")
#> Ubuntu already installed
```
