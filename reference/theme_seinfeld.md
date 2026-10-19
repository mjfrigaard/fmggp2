# Seinfeld theme

A `ggplot2` theme built from the Seinfeld logo: the black drop shadow
background, a yellow frame, a red American Typewriter title, white text,
and yellow, red, cyan, and white marks.

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

Use `mode = "light"` for the logo's yellow oval as the background, with
a black frame, a white panel, black text, and red, cyan, yellow, and
black marks outlined in black.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Seinfeld") +
  theme_seinfeld(base_family = "sans", title_family = "sans")
```
