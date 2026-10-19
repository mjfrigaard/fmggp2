# GeoCities theme

A `ggplot2` theme built from a GeoCities home page: a black background,
a web gray frame, a dark navy panel, lime green text, a yellow Comic
Sans title, web safe marks, and a blue to yellow continuous scale.

## Usage

``` r
theme_geocities(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Comic Sans MS", "Comic Sans MS Bold.ttf"),
  mode = c("dark", "light")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Comic Sans MS when it's available,
  otherwise `"sans"`.

- mode:

  `"dark"` (the default) or `"light"`.

## Value

A `ggplot2` theme object.

## Details

Use `mode = "light"` for a light background with darker text and marks.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "GeoCities") +
  theme_geocities(base_family = "sans", title_family = "sans")
```
