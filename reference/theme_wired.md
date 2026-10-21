# WIRED theme

A `ggplot2` theme built from the WIRED (US) November/December 2024 "Big
Interview" cover: a black background, a white frame and title, a
Helvetica Neue title, and the cover's red, blue, pink, gray, and steel
blue marks.

## Usage

``` r
theme_wired(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Helvetica Neue", "HelveticaNeue.ttc"),
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

  Title font family. Defaults to Helvetica Neue when it's available,
  otherwise `"sans"`.

- mode:

  `"dark"` (the default) or `"light"`.

## Value

A `ggplot2` theme object.

## Details

Use `mode = "light"` for a light gray background with a black frame,
black text, a white panel, and red, blue, pink, navy, and darker gray
marks.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "WIRED") +
  theme_wired(base_family = "sans", title_family = "sans")
```
