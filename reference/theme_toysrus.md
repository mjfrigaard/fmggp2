# Toys R Us theme

A late 90s `ggplot2` theme modeled on a Toys"R"Us store: a bright white
background with a blue frame, the multicolored logo letters as marks,
and a Phosphate title.

## Usage

``` r
theme_toysrus(
  base_size = 11,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Phosphate", "Phosphate.ttc")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `11`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Phosphate when it's available on the
  system, otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Toys R Us") +
  theme_toysrus(base_family = "sans", title_family = "sans")
```
