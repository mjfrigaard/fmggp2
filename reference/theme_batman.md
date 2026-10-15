# Batman theme

A `ggplot2` theme built from the Batman (1989) color palette: a black
background, a gold bat signal frame and title, a dark brown plot area,
silver text, orange, gold, steel, rust, and pale gold marks, and a DIN
Condensed title.

## Usage

``` r
theme_batman(
  base_size = 11,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("DIN Condensed", "DIN Condensed Bold.ttf")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `11`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to DIN Condensed when it's available,
  otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Batman") +
  theme_batman(base_family = "sans", title_family = "sans")
```
