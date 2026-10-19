# Java applet theme

A `ggplot2` theme built from a Java AWT applet: a gray window
background, a gray frame, a white panel, red, blue, purple, and gray
marks, and a blue Verdana title.

## Usage

``` r
theme_javaapplet(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Verdana", "Verdana Bold.ttf")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Verdana when it's available, otherwise
  `"sans"`.

## Value

A `ggplot2` theme object.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Java applet") +
  theme_javaapplet(base_family = "sans", title_family = "sans")
```
