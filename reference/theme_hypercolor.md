# Hypercolor theme

A `ggplot2` theme built from Generra Hypercolor shirts: a deep purple
background, a magenta frame, heat changing magenta, orange, purple,
blue, green, and yellow marks, and a Gill Sans title.

## Usage

``` r
theme_hypercolor(
  base_size = 11,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Gill Sans", "GillSans.ttc")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `11`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Gill Sans when it's available,
  otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Hypercolor") +
  theme_hypercolor(base_family = "sans", title_family = "sans")
```
