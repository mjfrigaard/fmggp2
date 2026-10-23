# Tetris theme

A late 90s `ggplot2` theme modeled on Tetris: a black well, a cyan
frame, the seven tetromino colors (cyan, yellow, purple, green, red,
blue, and orange) as marks, and a yellow title in the pixel font Press
Start 2P (bundled with the package).

## Usage

``` r
theme_tetris(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = gameboy_font(),
  mode = c("dark", "light")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Press Start 2P when it's available,
  otherwise `"sans"`.

- mode:

  `"dark"` (the default) or `"light"`.

## Value

A `ggplot2` theme object.

## Details

Use `mode = "light"` for a light gray background with dark text, a blue
title, and darker cyan, yellow, green, and orange marks.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Tetris") +
  theme_tetris(base_family = "sans", title_family = "sans")
```
