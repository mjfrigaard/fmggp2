# Blockbuster theme

A late 90s `ggplot2` theme modeled on a Blockbuster Video store: royal
blue background, yellow ticket stub marks, white Arial text, and an
Impact title.

## Usage

``` r
theme_blockbuster(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Impact", "Impact.ttf"),
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

  Title font family. Defaults to Impact when it's available on the
  system, otherwise `"sans"`.

- mode:

  `"dark"` (the default) or `"light"`.

## Value

A `ggplot2` theme object.

## Details

Use `mode = "light"` for a light background with darker text and marks.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = rpois(60, 3)), aes(x = x)) +
  geom_dotplot(binwidth = 1) +
  labs(title = "Blockbuster") +
  theme_blockbuster(base_family = "sans", title_family = "sans")
```
