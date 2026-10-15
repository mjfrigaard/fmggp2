# Tamagotchi theme

A late 90s `ggplot2` theme modeled on a Tamagotchi: a lilac egg shell, a
gray green LCD screen plot area, pink, teal, and yellow shell colors,
and a Futura title.

## Usage

``` r
theme_tamagotchi(
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
  labs(title = "Tamagotchi") +
  theme_tamagotchi(base_family = "sans", title_family = "sans")
```
