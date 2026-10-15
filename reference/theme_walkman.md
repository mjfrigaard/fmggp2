# Sony Walkman theme

A late 90s `ggplot2` theme modeled on the Sony Sports Walkman: a cobalt
blue backdrop with white grid lines, a sports yellow frame and title,
yellow, green, and beige button colors as marks, charcoal lines, and a
DIN Condensed title.

## Usage

``` r
theme_walkman(
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

  Title font family. Defaults to DIN Condensed when it's available on
  the system, otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c(3, 5), y = c("a", "b")), aes(x = x, y = y)) +
  geom_point(size = 3) +
  labs(title = "Walkman") +
  theme_walkman(base_family = "sans", title_family = "sans")
```
