# IBM Microdrive theme

A `ggplot2` theme built from IBM and Hitachi Microdrive cards: a tan
desk background, a black frame, IBM blue, red, navy, and Hitachi sky
blue marks, and a red Times New Roman title.

## Usage

``` r
theme_microdrive(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Times New Roman", "Times New Roman Bold.ttf")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Times New Roman when it's available,
  otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "IBM Microdrive") +
  theme_microdrive(base_family = "sans", title_family = "sans")
```
