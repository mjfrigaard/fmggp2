# CU-SeeMe theme

A `ggplot2` theme built from the CU-SeeMe phone book window: a dithered
gray background, a black frame, a white panel, black, magenta, and gray
marks, and a magenta Tahoma title.

## Usage

``` r
theme_cuseeme(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Tahoma", "Tahoma Bold.ttf")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Tahoma when it's available, otherwise
  `"sans"`.

## Value

A `ggplot2` theme object.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "CU-SeeMe") +
  theme_cuseeme(base_family = "sans", title_family = "sans")
```
