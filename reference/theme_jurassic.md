# Jurassic Park theme

A late 90s `ggplot2` theme modeled on the Jurassic Park (1993) Post
Office souvenir stamp sheet: a black sheet with a logo red frame, a dark
jungle plot area, stamp yellow titles, red, yellow, sunset orange,
cream, and tan marks, and a Herculanum title.

## Usage

``` r
theme_jurassic(
  base_size = 11,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Herculanum", "Herculanum.ttf"),
  mode = c("dark", "light")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `11`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Herculanum when it's available on the
  system, otherwise `"sans"`.

- mode:

  `"dark"` (the default) or `"light"`.

## Value

A `ggplot2` theme object.

## Details

Use `mode = "light"` for a light background with darker text and marks.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b"), y = c(3, 5)), aes(x = x, y = y)) +
  geom_col() +
  labs(title = "Jurassic Park") +
  theme_jurassic(base_family = "sans", title_family = "sans")
```
