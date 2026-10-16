# Talkboy theme

A `ggplot2` theme built from the Deluxe Talkboy cassette recorder: a
dark walnut background, a silver frame and panel, button blue marks, and
a Brush Script title.

## Usage

``` r
theme_talkboy(
  base_size = 11,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Brush Script", "Brush Script.ttf")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `11`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Brush Script when it's available,
  otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Talkboy") +
  theme_talkboy(base_family = "sans", title_family = "sans")
```
