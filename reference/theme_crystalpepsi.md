# Crystal Pepsi theme

A `ggplot2` theme built from Crystal Pepsi (1992 to 1994): a clear
bottle cream background, a navy frame, Pepsi red and navy marks, a
silver label gray, and a Futura title.

## Usage

``` r
theme_crystalpepsi(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Futura", "Futura.ttc")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Futura when it's available, otherwise
  `"sans"`.

## Value

A `ggplot2` theme object.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Crystal Pepsi") +
  theme_crystalpepsi(base_family = "sans", title_family = "sans")
```
