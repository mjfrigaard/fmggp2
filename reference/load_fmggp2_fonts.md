# Load Ubuntu Fonts for fmggp2 Package

Imports the Ubuntu font from the `fmggp2` package assets, adds it to the
available system fonts, and turns on automatic font loading with
`showtext` so graphs can use it.

## Usage

``` r
load_fmggp2_fonts()
```

## Value

Invisible `NULL`. The function is called for its side effects.

## Fonts Import

[`extrafont::font_import()`](https://rdrr.io/pkg/extrafont/man/font_import.html)
imports the fonts, which makes them available in PDF and PostScript
graphics. The import runs without prompting the user.

## Fonts Addition

Once imported, the Ubuntu font is added to the available system fonts
with
[`sysfonts::font_add()`](https://rdrr.io/pkg/sysfonts/man/font_add.html).

## Enabling Font in Graphics

Finally,
[`showtext::showtext_auto()`](https://rdrr.io/pkg/showtext/man/showtext_auto.html)
turns on automatic font rendering, so graphics devices use the font
right away.

## See also

[`font_import`](https://rdrr.io/pkg/extrafont/man/font_import.html),
[`font_add`](https://rdrr.io/pkg/sysfonts/man/font_add.html),
[`showtext_auto`](https://rdrr.io/pkg/showtext/man/showtext_auto.html)
