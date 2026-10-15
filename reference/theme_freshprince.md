# Fresh Prince theme

A late 90s `ggplot2` theme modeled on The Fresh Prince of Bel-Air
opening: deep purple background, graffiti neon green, pink, teal, and
yellow, and an Arial Black title. Continuous fills run from teal to hot
pink.

## Usage

``` r
theme_freshprince(
  base_size = 11,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Arial Black", "Arial Black.ttf")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `11`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Arial Black when it's available on the
  system, otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## Examples

``` r
library(ggplot2)
ggplot(expand.grid(x = 1:3, y = 1:3), aes(x = x, y = y, fill = x * y)) +
  geom_tile() +
  labs(title = "Fresh Prince") +
  theme_freshprince(base_family = "sans", title_family = "sans")
```
