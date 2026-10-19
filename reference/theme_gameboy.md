# Game Boy theme

A late 90s `ggplot2` theme modeled on the original Game Boy screen: the
four shade green palette, a dark green frame, and the pixel font Press
Start 2P (bundled with the package).

## Usage

``` r
theme_gameboy(base_size = 15, base_family = gameboy_font())
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Press Start 2P, or `"sans"` if the font
  file can't be found.

## Value

A `ggplot2` theme object.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b", "c")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Game Boy") +
  theme_gameboy(base_family = "sans")
```
