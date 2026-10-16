# Bop It theme

A `ggplot2` theme built from the Bop It toy: a deep purple background, a
yellow frame and title, yellow, blue, green, orange, and pink marks, a
purple to yellow continuous scale, and a Rockwell title.

## Usage

``` r
theme_bopit(
  base_size = 11,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Rockwell", "Rockwell.ttc")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `11`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Rockwell when it's available, otherwise
  `"sans"`.

## Value

A `ggplot2` theme object.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Bop It") +
  theme_bopit(base_family = "sans", title_family = "sans")
```
