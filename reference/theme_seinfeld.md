# Seinfeld theme

A `ggplot2` theme built from Seinfeld: a comedy club brick background, a
yellow frame and title, the yellow, red, blue, and green logo colors for
marks, cream text, and an American Typewriter title.

## Usage

``` r
theme_seinfeld(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("American Typewriter", "AmericanTypewriter.ttc"),
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

  Title font family. Defaults to American Typewriter when it's
  available, otherwise `"sans"`.

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
  labs(title = "Seinfeld") +
  theme_seinfeld(base_family = "sans", title_family = "sans")
```
