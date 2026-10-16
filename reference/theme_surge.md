# Surge theme

A `ggplot2` theme built from Surge soda: a black background, a Surge
green frame and title, green, red, orange, yellow, and white marks, a
dark to bright green continuous scale, and a DIN Alternate title.

## Usage

``` r
theme_surge(
  base_size = 11,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("DIN Alternate", "DIN Alternate Bold.ttf")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `11`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to DIN Alternate when it's available,
  otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Surge") +
  theme_surge(base_family = "sans", title_family = "sans")
```
