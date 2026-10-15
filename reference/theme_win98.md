# Windows 98 theme

A late 90s `ggplot2` theme modeled on a Windows 98 window sitting on the
teal desktop: silver window frame, navy title bar, white plot area, and
navy marks.

## Usage

``` r
theme_win98(base_size = 11, base_family = win98_font())
```

## Arguments

- base_size:

  Base font size. Defaults to `11`.

- base_family:

  Base font family. Defaults to Tahoma when it's available on the
  system, otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = rnorm(100)), aes(x = x)) +
  geom_histogram(bins = 20) +
  labs(title = "Windows 98") +
  theme_win98(base_family = "sans")
```
