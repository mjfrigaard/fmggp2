# Spice Girls theme

A late 90s `ggplot2` theme modeled on the Spice World tour poster: a
black background with a tour red frame, a pink title, cream text, mint,
pink, orange, gold, and blue letter marks, and Trebuchet MS text.

## Usage

``` r
theme_spice(
  base_size = 11,
  base_family = register_font("Trebuchet MS", "Trebuchet MS.ttf",
    "Trebuchet MS Bold.ttf")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `11`.

- base_family:

  Base font family. Defaults to Trebuchet MS when it's available on the
  system, otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c(rnorm(60, 11, 2), rnorm(40, 37, 6))), aes(x = x)) +
  geom_density() +
  labs(title = "Spice World") +
  theme_spice(base_family = "sans")
```
