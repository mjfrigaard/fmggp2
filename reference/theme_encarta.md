# Encarta theme

A late 90s `ggplot2` theme modeled on MindMaze, the castle trivia game
in Microsoft Encarta 97: a dark stone background, a carved wood frame, a
gold banner title, a parchment plot area, stone gray, copper, gold, and
moss marks, and a Georgia title.

## Usage

``` r
theme_encarta(
  base_size = 11,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Georgia", "Georgia Bold.ttf")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `11`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Georgia Bold when it's available on the
  system, otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Encarta") +
  theme_encarta(base_family = "sans", title_family = "sans")
```
