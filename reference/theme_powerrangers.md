# Power Rangers theme

A `ggplot2` theme built from the Mighty Morphin Power Rangers: a light
gray background, a lightning gold frame, a red Copperplate title, and
red, blue, yellow, pink, black, and green Ranger marks.

## Usage

``` r
theme_powerrangers(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Copperplate", "Copperplate.ttc")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Copperplate when it's available,
  otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Power Rangers") +
  theme_powerrangers(base_family = "sans", title_family = "sans")
```
