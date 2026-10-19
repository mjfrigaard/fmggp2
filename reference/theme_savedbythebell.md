# Saved by the Bell theme

A `ggplot2` theme built from the Saved by the Bell logo: a black
background with a royal blue frame, a yellow title, a white classroom
panel, sky blue, pink, yellow, orange, royal blue, and navy marks, and a
SignPainter title.

## Usage

``` r
theme_savedbythebell(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("SignPainter", "SignPainter.ttc")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to SignPainter when it's available,
  otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Saved by the Bell") +
  theme_savedbythebell(base_family = "sans", title_family = "sans")
```
