# J2ME theme

A `ggplot2` theme built from a Nokia N73 running a J2ME app: a black
phone background, a silver frame, a pale screen panel, Ushahidi red,
tan, brown, and black marks, and an Arial Narrow title.

## Usage

``` r
theme_j2me(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Arial Narrow", "Arial Narrow Bold.ttf")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Arial Narrow when it's available,
  otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "J2ME") +
  theme_j2me(base_family = "sans", title_family = "sans")
```
