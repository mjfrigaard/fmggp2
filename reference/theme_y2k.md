# Y2K theme

A `ggplot2` theme built from the Y2K countdown: a black terminal
background, a red LED frame and title, red, amber, green, silver, and
blue screen marks, and a PT Mono title.

## Usage

``` r
theme_y2k(
  base_size = 11,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("PT Mono", "PTMono.ttc"),
  mode = c("dark", "light")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `11`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to PT Mono when it's available, otherwise
  `"sans"`.

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
  labs(title = "Y2K") +
  theme_y2k(base_family = "sans", title_family = "sans")
```
