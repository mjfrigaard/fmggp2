# Handspring Visor theme

A `ggplot2` theme built from a green Handspring Visor Deluxe: a pale
lavender background, a translucent green frame, a gray LCD panel, green,
gray, mint, and silver marks, and a Trebuchet MS title.

## Usage

``` r
theme_visor(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Trebuchet MS", "Trebuchet MS Bold.ttf")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Trebuchet MS when it's available,
  otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Handspring Visor") +
  theme_visor(base_family = "sans", title_family = "sans")
```
