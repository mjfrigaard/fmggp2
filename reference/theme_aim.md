# AIM theme

A late 90s `ggplot2` theme modeled on the AOL Instant Messenger sign on
window: a gray window, an AOL blue frame and title, a white chat panel,
blue, sky, running man yellow, and slate marks, and an Arial Rounded
title.

## Usage

``` r
theme_aim(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Arial Rounded", "Arial Rounded Bold.ttf")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Arial Rounded when it's available,
  otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "AIM") +
  theme_aim(base_family = "sans", title_family = "sans")
```
