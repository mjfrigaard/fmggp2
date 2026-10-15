# Nintendo 64 theme

A late 90s `ggplot2` theme modeled on the Nintendo 64: controller gray
background, charcoal frame, the red, green, blue, and yellow logo
colors, and an Arial Black title.

## Usage

``` r
theme_n64(
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
ggplot(data.frame(x = "", y = 45 + 2 * rt(200, df = 3)), aes(x = x, y = y)) +
  geom_boxplot() +
  labs(title = "Nintendo 64") +
  theme_n64(base_family = "sans", title_family = "sans")
```
