# fmggp2 Styling Theme

Applies a custom styling theme for ggplot2 charts, inspired by
theme_minimal() and theme_void() from ggplot2, with adjustments to
panels, margins, and legends to incorporate the Ubuntu font and
customized visual elements.

## Usage

``` r
theme_fmggp2(
  base_size = 11,
  base_family = "Ubuntu",
  base_line_size = base_size/22,
  base_rect_size = base_size/22
)
```

## Arguments

- base_size:

  The base font size for text elements. Defaults to 11.

- base_family:

  The base font family for text elements. Defaults to NULL.

- base_line_size:

  The default size for line elements, calculated as a proportion of the
  base_size. Defaults to base_size / 22.

- base_rect_size:

  The default size for rectangle elements, calculated as a proportion of
  the base_size. Defaults to base_size / 22.

## Value

A ggplot2 theme object that can be applied to ggplot2 charts to enforce
the fmggp2 style.

## Theme Elements

The function defines a suite of ggplot2 theme settings that include
text, axis, panel, and legend formatting:

- Text elements use the specified `base_family` font

- The size is set relative to the `base_size` parameter

- Axis titles and text are positioned and sized for clarity

- Tick marks are removed for a cleaner look

- Panel grids are defined with subtle lines

- Strip text and background are styled to differentiate facets

- The plot title, subtitle, caption, and tag are formatted for
  prominence and readability

- Legend aesthetics are simplified, with font sizes relative to the base
  size and unobtrusive margins

- The overall plot margin is adjusted for a balanced layout.

## See also

[`theme_minimal`](https://ggplot2.tidyverse.org/reference/ggtheme.html),
[`theme_void`](https://ggplot2.tidyverse.org/reference/ggtheme.html)

## Examples

``` r
# Apply the theme to a ggplot object
require(ggplot2)
#> Loading required package: ggplot2
ggplot(data = mpg, aes(x = class, fill = class)) +
  geom_bar() +
  theme_fmggp2(base_size = 15)

```
