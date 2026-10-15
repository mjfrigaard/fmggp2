# Tetris theme

A late 90s `ggplot2` theme modeled on Tetris: a black well, the seven
tetromino colors as marks, and the pixel font Press Start 2P (bundled
with the package) for the title.

## Usage

``` r
theme_tetris(
  base_size = 11,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = gameboy_font()
)
```

## Arguments

- base_size:

  Base font size. Defaults to `11`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Press Start 2P when it's available,
  otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Tetris") +
  theme_tetris(base_family = "sans", title_family = "sans")
```
