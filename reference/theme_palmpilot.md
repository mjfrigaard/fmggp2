# Palm Pilot theme

A `ggplot2` theme built from a PalmPilot Professional: a charcoal case
background, a teal frame, a white title, a green LCD panel, ink, LCD
green, plum, and teal marks, and a Futura title.

## Usage

``` r
theme_palmpilot(
  base_size = 11,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Futura", "Futura.ttc")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `11`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Futura when it's available, otherwise
  `"sans"`.

## Value

A `ggplot2` theme object.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Palm Pilot") +
  theme_palmpilot(base_family = "sans", title_family = "sans")
```
