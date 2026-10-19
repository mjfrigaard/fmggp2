# Batman theme

A `ggplot2` theme built from three Batman color palettes:

## Usage

``` r
theme_batman(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("DIN Condensed", "DIN Condensed Bold.ttf"),
  version = c("movie", "classic", "darknight"),
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

  Title font family. Defaults to DIN Condensed when it's available,
  otherwise `"sans"`.

- version:

  One of `"movie"`, `"classic"`, or `"darknight"`.

- mode:

  `"dark"` (the default) or `"light"`.

## Value

A `ggplot2` theme object.

## Details

- `"movie"`: Batman (1989), with a black background, a gold bat signal
  frame and title, a dark brown plot area, silver text, and orange,
  gold, steel, rust, and pale gold marks.

- `"classic"`: the 1966 TV series, with a gray background, a black
  frame, a blue title, a cream plot area, and blue, yellow, black, and
  gray marks.

- `"darknight"`: The Dark Knight, with a charcoal background, a yellow
  frame and title, a navy plot area, and yellow, olive, and slate marks.

All three use a DIN Condensed title. Use `mode = "light"` for a light
version of `"movie"` or `"darknight"`; `"classic"` is already light, so
`mode` doesn't change it.

## Examples

``` r
library(ggplot2)
p <- ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Batman")
p + theme_batman(base_family = "sans", title_family = "sans")

p + theme_batman(base_family = "sans", title_family = "sans",
                 version = "classic")

p + theme_batman(base_family = "sans", title_family = "sans",
                 version = "darknight")

p + theme_batman(base_family = "sans", title_family = "sans",
                 mode = "light")
```
