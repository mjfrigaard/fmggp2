# Two-way pager theme

A `ggplot2` theme built from a RIM 950 two-way pager: a concrete
background, a charcoal frame and title, a pale LCD panel, charcoal,
orange, and slate marks, and an Arial Black title.

## Usage

``` r
theme_pager(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Arial Black", "Arial Black.ttf")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Arial Black when it's available,
  otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Two-way pager") +
  theme_pager(base_family = "sans", title_family = "sans")
```
