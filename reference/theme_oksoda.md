# OK Soda theme

A `ggplot2` theme built from OK Soda cans (1993 to 1995): a brushed
silver background, a black frame, a gray comic panel, OK red marks and
title, slate and brick accents, and a Courier New title.

## Usage

``` r
theme_oksoda(
  base_size = 11,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Courier New", "Courier New Bold.ttf")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `11`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Courier New when it's available,
  otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "OK Soda") +
  theme_oksoda(base_family = "sans", title_family = "sans")
```
