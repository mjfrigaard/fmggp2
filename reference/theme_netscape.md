# Netscape theme

A late 90s `ggplot2` theme modeled on the Netscape Navigator logo: a
night sky background, a teal frame, a glowing teal title, and teal,
aurora green, sea glass, and deep teal marks, and a Times New Roman
title.

## Usage

``` r
theme_netscape(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Times New Roman", "Times New Roman Bold.ttf"),
  mode = c("dark", "light")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Times New Roman Bold when it's
  available on the system, otherwise `"sans"`.

- mode:

  `"dark"` (the default) or `"light"`.

## Value

A `ggplot2` theme object.

## Details

Use `mode = "light"` for a light background with darker text and marks.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Netscape") +
  theme_netscape(base_family = "sans", title_family = "sans")
```
