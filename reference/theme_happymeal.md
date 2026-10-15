# Happy Meal theme

A late 90s `ggplot2` theme modeled on a McDonald's Happy Meal box: red
box, golden yellow marks, a cream plot area, and an Arial Rounded title.

## Usage

``` r
theme_happymeal(
  base_size = 11,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Arial Rounded", "Arial Rounded Bold.ttf")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `11`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Arial Rounded when it's available on
  the system, otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b"), y = c(3, 5)), aes(x = x, y = y)) +
  geom_col() +
  labs(title = "Happy Meal") +
  theme_happymeal(base_family = "sans", title_family = "sans")
```
