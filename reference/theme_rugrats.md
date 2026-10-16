# Rugrats theme

A `ggplot2` theme built from the Rugrats logo: a pale yellow playpen
background, a purple frame and Marker Felt title, and purple, yellow,
red, green, plum, gold, Tommy blue, and orange marks.

## Usage

``` r
theme_rugrats(
  base_size = 11,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Marker Felt", "MarkerFelt.ttc", dir =
    "/System/Library/Fonts")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `11`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Marker Felt when it's available,
  otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Rugrats") +
  theme_rugrats(base_family = "sans", title_family = "sans")
```
