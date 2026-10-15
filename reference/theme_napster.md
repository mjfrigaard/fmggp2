# Napster theme

A late 90s `ggplot2` theme modeled on the dark 1999 Napster client: near
black window, white text, dark gray grid, and bright lime marks.

## Usage

``` r
theme_napster(base_size = 11, base_family = napster_font())
```

## Arguments

- base_size:

  Base font size. Defaults to `11`.

- base_family:

  Base font family. Defaults to Verdana when it's available on the
  system, otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = rgamma(100, shape = 4)), aes(x = x)) +
  geom_freqpoly(bins = 20) +
  labs(title = "Napster") +
  theme_napster(base_family = "sans")
```
