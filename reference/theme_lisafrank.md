# Lisa Frank theme

A late 90s `ggplot2` theme modeled on a Lisa Frank folder: a purple
background with a yellow frame and title, a white plot area, magenta,
orange, yellow, and purple marks, and a Chalkboard title.

## Usage

``` r
theme_lisafrank(
  base_size = 11,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Chalkboard", "Chalkboard.ttc")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `11`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Chalkboard when it's available on the
  system, otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Lisa Frank") +
  theme_lisafrank(base_family = "sans", title_family = "sans")
```
