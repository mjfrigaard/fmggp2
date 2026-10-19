# Novell NetWare theme

A `ggplot2` theme built from Novell NetWare 2.0 boxes: a NetWare red
background with white text, a maroon frame, maroon, red, rose, and blush
marks, and a Gill Sans title.

## Usage

``` r
theme_netware(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Gill Sans", "GillSans.ttc")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Gill Sans when it's available,
  otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Novell NetWare") +
  theme_netware(base_family = "sans", title_family = "sans")
```
