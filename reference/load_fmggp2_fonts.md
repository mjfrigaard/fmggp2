# Load Ubuntu Fonts for fmggp2 Package

This function imports the Ubuntu font from the 'fmggp2' package assets,
adds it to the available system fonts, and sets it up for use with
graphing tools by enabling automatic font loading via 'showtext'.

## Usage

``` r
load_fmggp2_fonts()
```

## Value

Invisible NULL. The function is called for its side effects.

## Fonts Import

The fonts are imported using the `font_import` function from the
`extrafont` package, which allows for the use of fonts in PDF and
PostScript graphics. The function does not prompt the user during the
font import process.

## Fonts Addition

Once imported, the Ubuntu font is added to the available system fonts
with the `font_add` function from the `sysfonts` package.

## Enabling Font in Graphics

Finally, the `showtext_auto` function from the `showtext` package is
used to automatically use the font in graphs, facilitating the immediate
application of the font in graphical devices.

## See also

[`font_import`](https://rdrr.io/pkg/extrafont/man/font_import.html),
[`font_add`](https://rdrr.io/pkg/sysfonts/man/font_add.html),
[`showtext_auto`](https://rdrr.io/pkg/showtext/man/showtext_auto.html)
