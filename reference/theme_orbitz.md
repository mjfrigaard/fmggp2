# Orbitz theme

A `ggplot2` theme built from Orbitz, the 1997 drink with floating balls:
a black background, a gold frame, gold and magenta ball marks, sand,
maroon, and amber accents, and a Marker Felt title.

## Usage

``` r
theme_orbitz(
  base_size = 11,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Marker Felt", "MarkerFelt.ttc", dir =
    "/System/Library/Fonts"),
  mode = c("dark", "light")
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
  labs(title = "Orbitz") +
  theme_orbitz(base_family = "sans", title_family = "sans")
```
