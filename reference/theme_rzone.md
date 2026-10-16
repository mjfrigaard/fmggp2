# Tiger R-Zone theme

A `ggplot2` theme built from the Tiger R-Zone headset (1995): black
plastic, a red frame and title, red LCD, purple logo, and pink marks, a
pale blue visor text color, and an Arial Narrow title.

## Usage

``` r
theme_rzone(
  base_size = 11,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Arial Narrow", "Arial Narrow Bold.ttf")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `11`.

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
  labs(title = "R-Zone") +
  theme_rzone(base_family = "sans", title_family = "sans")
```
