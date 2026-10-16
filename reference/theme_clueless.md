# Clueless theme

A `ggplot2` theme built from Cher's yellow plaid in Clueless: a plaid
yellow background, a black frame, a cornsilk panel, black, red, tartan
green, navy, and gray marks, and a Didot title.

## Usage

``` r
theme_clueless(
  base_size = 11,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Didot", "Didot.ttc")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `11`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Didot when it's available, otherwise
  `"sans"`.

## Value

A `ggplot2` theme object.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Clueless") +
  theme_clueless(base_family = "sans", title_family = "sans")
```
