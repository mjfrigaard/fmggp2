# Pogs theme

A late 90s `ggplot2` theme modeled on Pogs: a cardboard milk cap
background, bright purple, orange, teal, and yellow prints, and a
Bradley Hand title.

## Usage

``` r
theme_pogs(
  base_size = 11,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Bradley Hand", "Bradley Hand Bold.ttf")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `11`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Bradley Hand when it's available on the
  system, otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Pogs") +
  theme_pogs(base_family = "sans", title_family = "sans")
```
