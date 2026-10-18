# 3Com Audrey theme

A `ggplot2` theme built from the 3Com Audrey internet appliance: a white
plastic background, a black tile frame, a teal title, teal, navy, tan,
brown, and aqua marks, and an Arial Rounded title.

## Usage

``` r
theme_audrey(
  base_size = 11,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Arial Rounded", "Arial Rounded Bold.ttf")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `11`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Arial Rounded when it's available,
  otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "3Com Audrey") +
  theme_audrey(base_family = "sans", title_family = "sans")
```
