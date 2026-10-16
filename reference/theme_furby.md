# Furby theme

A late 90s `ggplot2` theme modeled on the Sherbet Furby: red fur, a beak
yellow frame, a pale blue belly plot area, and belly blue, beak yellow,
pink, and eye blue marks, and a Chalkboard SE title.

## Usage

``` r
theme_furby(
  base_size = 11,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Chalkboard SE", "ChalkboardSE.ttc")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `11`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Chalkboard SE when it's available,
  otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Furby") +
  theme_furby(base_family = "sans", title_family = "sans")
```
