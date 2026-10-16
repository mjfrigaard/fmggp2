# Doom theme

A `ggplot2` theme built from Doom (1993): a scorched brown background, a
hellfire red frame and title, red, orange, gunmetal, armor green, blue
key, and yellow key marks, and an Impact title.

## Usage

``` r
theme_doom(
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
  labs(title = "Doom") +
  theme_doom(base_family = "sans", title_family = "sans")
```
