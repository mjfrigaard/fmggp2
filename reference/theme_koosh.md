# Koosh ball theme

A `ggplot2` theme built from a tri color Koosh ball: a white background,
an orange frame, orange, purple, and black filament marks, peach and
lilac accents, and an Arial Rounded title.

## Usage

``` r
theme_koosh(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Arial Rounded", "Arial Rounded Bold.ttf")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Arial Rounded when it's available,
  otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Koosh") +
  theme_koosh(base_family = "sans", title_family = "sans")
```
