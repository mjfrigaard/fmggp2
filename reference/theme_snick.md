# SNICK theme

A `ggplot2` theme built from Nickelodeon's Saturday night block (SNICK):
a night purple background, a Nickelodeon orange frame and title, slime
green, purple, blue, yellow, and pink marks, and an Arial Black title.

## Usage

``` r
theme_snick(
  base_size = 11,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Arial Black", "Arial Black.ttf"),
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

  Title font family. Defaults to Arial Black when it's available,
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
  labs(title = "SNICK") +
  theme_snick(base_family = "sans", title_family = "sans")
```
