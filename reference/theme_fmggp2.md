# fmggp2 Styling Theme

The original `ggplot2` theme for the book. It borrows from
[`theme_minimal()`](https://ggplot2.tidyverse.org/reference/ggtheme.html)
and
[`theme_void()`](https://ggplot2.tidyverse.org/reference/ggtheme.html),
then adjusts the panels, margins, and legends and sets the text in the
Ubuntu font.

## Usage

``` r
theme_fmggp2(
  base_size = 15,
  base_family = "Ubuntu",
  base_line_size = base_size/22,
  base_rect_size = base_size/22
)
```

## Arguments

- base_size:

  The base font size for text elements. Defaults to 15.

- base_family:

  The base font family for text elements. Defaults to `"Ubuntu"`.

- base_line_size:

  The default size for line elements, calculated as a proportion of
  `base_size`. Defaults to `base_size / 22`.

- base_rect_size:

  The default size for rectangle elements, calculated as a proportion of
  `base_size`. Defaults to `base_size / 22`.

## Value

A `ggplot2` theme object with the fmggp2 style.

## Theme Elements

The theme sets the text, axis, panel, and legend formatting:

- Text elements use the `base_family` font

- Text sizes are set relative to `base_size`

- Axis titles and text are positioned and sized for clarity

- Tick marks are removed for a cleaner look

- Panel grids use subtle lines

- Strip text and backgrounds are styled to separate facets

- The plot title, subtitle, caption, and tag are formatted for
  prominence and readability

- Legends are simplified, with font sizes relative to `base_size` and
  unobtrusive margins

- The plot margin is adjusted for a balanced layout

## See also

[`theme_minimal`](https://ggplot2.tidyverse.org/reference/ggtheme.html),
[`theme_void`](https://ggplot2.tidyverse.org/reference/ggtheme.html)

## Examples

``` r
# Apply the theme to a ggplot object
require(ggplot2)
ggplot(data = mpg, aes(x = class, fill = class)) +
  geom_bar() +
  theme_fmggp2(base_size = 15)
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead
#> Warning: font family 'Ubuntu' not found, will use 'sans' instead

```
