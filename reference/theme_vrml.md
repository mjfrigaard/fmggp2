# VRML theme

A `ggplot2` theme built from a VRML living room: a tan wall background,
a floor brown frame, a pale panel, sofa red, lamp green, black, and
glass marks, and an Andale Mono title.

## Usage

``` r
theme_vrml(
  base_size = 11,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Andale Mono", "Andale Mono.ttf")
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

## Value

A `ggplot2` theme object.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "VRML") +
  theme_vrml(base_family = "sans", title_family = "sans")
```
