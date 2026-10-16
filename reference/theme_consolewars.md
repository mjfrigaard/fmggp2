# Console wars theme

A `ggplot2` theme built from the Sega vs. Nintendo console wars: a
charcoal background, a Sega blue frame, a Nintendo red title, Sega blue,
Nintendo red, Super Nintendo purple, gray, and gold marks, and a
Krungthep title.

## Usage

``` r
theme_consolewars(
  base_size = 11,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Krungthep", "Krungthep.ttf")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `11`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Krungthep when it's available,
  otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Console wars") +
  theme_consolewars(base_family = "sans", title_family = "sans")
```
