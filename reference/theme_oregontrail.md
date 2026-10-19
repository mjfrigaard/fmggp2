# Oregon Trail theme

A late 90s `ggplot2` theme modeled on The Oregon Trail on an Apple II
emulator: a gray window frame, a black screen, phosphor green text and
marks in three shades, and an Andale Mono title.

## Usage

``` r
theme_oregontrail(
  base_size = 11,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Andale Mono", "Andale Mono.ttf"),
  mode = c("dark", "light")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `11`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Andale Mono when it's available,
  otherwise `"sans"`.

- mode:

  `"dark"` (the default) or `"light"`.

## Value

A `ggplot2` theme object.

## Details

Use `mode = "light"` for a light background with darker text and marks.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Oregon Trail") +
  theme_oregontrail(base_family = "sans", title_family = "sans")
```
