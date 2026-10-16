# Boy band theme

A `ggplot2` theme built from late 90s boy band album covers: a midnight
navy background, a chrome silver frame, ice blue, hot pink, gold,
lavender, and mint marks, and a Silom title.

## Usage

``` r
theme_boyband(
  base_size = 11,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Silom", "Silom.ttf")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `11`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Silom when it's available, otherwise
  `"sans"`.

## Value

A `ggplot2` theme object.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Boy band") +
  theme_boyband(base_family = "sans", title_family = "sans")
```
