# Rugrats theme

A `ggplot2` theme built from Rugrats: a pale yellow playpen background,
an orange frame, a purple Marker Felt title, and Tommy blue, Angelica
pink, Reptar green, orange, purple, red, teal, and yellow marks.

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
