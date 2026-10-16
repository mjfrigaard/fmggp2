# Beanie Babies theme

A late 90s `ggplot2` theme modeled on a Ty Beanie with its heart tag: a
pale aqua blanket background, a tag red frame and title, a white plot
area, red, teal, gold, pink, plum, and orange marks, and Comic Sans MS
text.

## Usage

``` r
theme_beanie(
  base_size = 11,
  base_family = register_font("Comic Sans MS", "Comic Sans MS.ttf",
    "Comic Sans MS Bold.ttf")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `11`.

- base_family:

  Base font family. Defaults to Comic Sans MS when it's available on the
  system, otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = "", y = rlnorm(100, log(15), 0.8)), aes(x = x, y = y)) +
  geom_violin() +
  labs(title = "Beanie Babies") +
  theme_beanie(base_family = "sans")
```
