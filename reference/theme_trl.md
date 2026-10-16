# MTV TRL theme

A late 90s `ggplot2` theme modeled on MTV's Total Request Live: a black
studio, TRL yellow, the MTV logo orange, red, and blue, and an Impact
title.

## Usage

``` r
theme_trl(
  base_size = 11,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Impact", "Impact.ttf")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `11`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Impact when it's available, otherwise
  `"sans"`.

## Value

A `ggplot2` theme object.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "MTV TRL") +
  theme_trl(base_family = "sans", title_family = "sans")
```
