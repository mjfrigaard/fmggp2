# Magic Eye theme

A late 90s `ggplot2` theme modeled on a Magic Eye stereogram: a deep sea
blue background, a coral frame, a sky blue title, and coral, sky, sand,
and sea green marks, and a Skia title.

## Usage

``` r
theme_magiceye(
  base_size = 11,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Skia", "Skia.ttf")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `11`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Skia when it's available, otherwise
  `"sans"`.

## Value

A `ggplot2` theme object.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Magic Eye") +
  theme_magiceye(base_family = "sans", title_family = "sans")
```
