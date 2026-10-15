# 90s themes

Every converted chapter in [*ggplot2: field
manual*](https://mjfrigaard.github.io/fm-ggp2/) uses simulated data with
a late 90s theme, and each dataset gets a `ggplot2` theme to match. This
vignette shows each theme with the data from the chapter that introduced
it.

``` r

library(fmggp2)
library(ggplot2)
showtext::showtext_auto()
```

## Game Boy

[`theme_gameboy()`](https://mjfrigaard.github.io/fmggp2/reference/theme_gameboy.md)
uses the four shades of green from the original Game Boy screen and the
pixel font Press Start 2P, which ships with `fmggp2`. Below we simulate
the starter chosen by 300 *Pokémon Red and Blue* players.

``` r

set.seed(1998)
pokemon_starters <- data.frame(
  starter = sample(c("Bulbasaur", "Charmander", "Squirtle"),
    size = 300, replace = TRUE, prob = c(0.30, 0.42, 0.28))
)
ggplot(pokemon_starters, aes(x = starter, fill = starter)) +
  geom_bar(show.legend = FALSE) +
  labs(title = "Pokemon Red and Blue (simulated)",
       subtitle = "Starter chosen by 300 players",
       x = "Starter", y = "Count") +
  theme_gameboy(base_size = 13)
```

![](themes_files/figure-html/gameboy-1.png)

## Windows 98

[`theme_win98()`](https://mjfrigaard.github.io/fmggp2/reference/theme_win98.md)
draws the plot as a Windows 98 window sitting on the teal desktop. The
title sits in a navy title bar, the plot area is white, and bars and
lines are navy by default. Below we simulate 300 AOL dial up sessions
(in minutes) from a normal distribution.

``` r

set.seed(1014)
aol_sessions <- data.frame(
  minutes = round(rnorm(n = 300, mean = 45, sd = 12))
)
ggplot(aol_sessions, aes(x = minutes)) +
  geom_histogram(bins = 30) +
  labs(title = "AOL dial up sessions (simulated)",
       subtitle = "Distribution of session length",
       x = "Session length (minutes)") +
  theme_win98(base_size = 13)
```

![](themes_files/figure-html/win98-1.png)

Discrete fills follow the desktop palette (gray, navy, then teal).

``` r

aol_ranges <- data.frame(
  range = factor(c("under 33", "33 to 56", "57 and over"),
                 levels = c("under 33", "33 to 56", "57 and over")),
  n = c(47, 193, 60)
)
ggplot(aol_ranges, aes(x = n, y = "300 sessions", fill = range)) +
  geom_col(position = position_stack(reverse = TRUE)) +
  labs(x = "Number of sessions", y = NULL, fill = "Minutes") +
  theme_win98(base_size = 13)
```

![](themes_files/figure-html/win98-discrete-1.png)

## Napster

[`theme_napster()`](https://mjfrigaard.github.io/fmggp2/reference/theme_napster.md)
borrows the dark 1999 Napster client: a near black window, white text, a
dotted gray grid, and lime marks. Below we simulate 300 MP3 downloads
over a 56k modem from a right skewed gamma distribution.

``` r

set.seed(1999)
napster_downloads <- data.frame(
  minutes = round(rgamma(n = 300, shape = 4, rate = 0.5), 1)
)
ggplot(napster_downloads, aes(x = minutes)) +
  geom_freqpoly(bins = 30) +
  labs(title = "Napster MP3 downloads (simulated)",
       subtitle = "Download time over a 56k modem",
       x = "Download time (minutes)") +
  theme_napster(base_size = 13)
```

![](themes_files/figure-html/napster-1.png)

## Fonts

Both themes use fonts that ship with macOS and Windows (Tahoma for
[`theme_win98()`](https://mjfrigaard.github.io/fmggp2/reference/theme_win98.md)
and Verdana for
[`theme_napster()`](https://mjfrigaard.github.io/fmggp2/reference/theme_napster.md)).
When the font file can’t be found, the theme falls back to `"sans"`, so
the plots above still render on Linux. You can also pass any family
you’ve registered with
[`sysfonts::font_add()`](https://rdrr.io/pkg/sysfonts/man/font_add.html):

``` r

theme_win98(base_family = "sans")
```

## Using a theme for a whole chapter

Each chapter sets its theme once in the setup chunk with
[`theme_set()`](https://ggplot2.tidyverse.org/reference/get_theme.html),
so the plotting code in the chapter doesn’t need a `theme_*()` call.

``` r

ggplot2::theme_set(fmggp2::theme_win98(base_size = 15))
```
