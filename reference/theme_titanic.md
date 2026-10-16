# Titanic theme

A late 90s `ggplot2` theme modeled on Titanic (1997), using the Vallejo
Titanic Colors paint set: a hull black background, a yellow hull stripe
frame and title, a canvas plot area with deck planking grid lines,
antifouling red, faded yellow, stone, and wood deck marks, and a Big
Caslon title.

## Usage

``` r
theme_titanic(
  base_size = 11,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Big Caslon", "BigCaslon.ttf")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `11`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Big Caslon when it's available on the
  system, otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Titanic") +
  theme_titanic(base_family = "sans", title_family = "sans")
```
