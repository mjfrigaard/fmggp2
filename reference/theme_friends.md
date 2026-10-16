# Friends theme

A late 90s `ggplot2` theme modeled on the Friends (1994 to 2004) color
palette: Monica's purple apartment walls, a Central Perk latte frame and
title, a cream plot area, red, teal, olive, orange, rose, and mocha
marks, and a Central Perk chalkboard (Chalkduster) title.

## Usage

``` r
theme_friends(
  base_size = 11,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Chalkduster", "Chalkduster.ttf")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `11`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Chalkduster when it's available on the
  system, otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Friends") +
  theme_friends(base_family = "sans", title_family = "sans")
```
