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

## Blockbuster

[`theme_blockbuster()`](https://mjfrigaard.github.io/fmggp2/reference/theme_blockbuster.md)
uses Blockbuster Video blue and yellow. Below we simulate weekly rentals
for 60 households from a Poisson distribution.

``` r

set.seed(1993)
blockbuster_rentals <- data.frame(rentals = rpois(n = 60, lambda = 3))
ggplot(blockbuster_rentals, aes(x = rentals)) +
  geom_dotplot(binwidth = 1, dotsize = 0.3) +
  labs(title = "Blockbuster Video (simulated)",
       x = "Number of rentals") +
  theme_blockbuster(base_size = 13)
```

![](themes_files/figure-html/blockbuster-1.png)

## Spice Girls

[`theme_spice()`](https://mjfrigaard.github.io/fmggp2/reference/theme_spice.md)
uses hot pink, purple, and gold. Below we simulate the ages of 400 fans
at a 1998 concert as a mix of kids and parents.

``` r

set.seed(1998)
kid <- runif(400) < 0.65
spice_fans <- data.frame(age = round(ifelse(kid, rnorm(400, 11, 2.5), rnorm(400, 37, 6))))
ggplot(spice_fans, aes(x = age)) +
  geom_density() +
  labs(title = "Spice World tour (simulated)",
       x = "Age (years)") +
  theme_spice(base_size = 13)
```

![](themes_files/figure-html/spice-1.png)

## Beanie Babies

[`theme_beanie()`](https://mjfrigaard.github.io/fmggp2/reference/theme_beanie.md)
uses the red and gold of a Beanie Babies heart tag. Below we simulate
300 resale prices from a log normal distribution.

``` r

set.seed(1996)
beanie_prices <- data.frame(price = rlnorm(n = 300, meanlog = log(15), sdlog = 0.8))
ggplot(beanie_prices, aes(x = "", y = price)) +
  geom_violin() +
  labs(title = "Beanie Babies resale prices (simulated)",
       x = NULL, y = "Price (USD)") +
  theme_beanie(base_size = 13)
```

![](themes_files/figure-html/beanie-1.png)

## Nintendo 64

[`theme_n64()`](https://mjfrigaard.github.io/fmggp2/reference/theme_n64.md)
uses controller gray and the four logo colors. Below we simulate 200
Mario Kart 64 lap times from a heavy tailed t distribution.

``` r

set.seed(64)
mario_kart_laps <- data.frame(seconds = 45 + 2 * rt(n = 200, df = 3))
ggplot(mario_kart_laps, aes(x = "", y = seconds)) +
  geom_boxplot() +
  labs(title = "Mario Kart 64 (simulated)",
       x = NULL, y = "Lap time (seconds)") +
  theme_n64(base_size = 13)
```

![](themes_files/figure-html/n64-1.png)

## Fonts

[`theme_gameboy()`](https://mjfrigaard.github.io/fmggp2/reference/theme_gameboy.md)
uses Press Start 2P, which ships with `fmggp2`. The other themes use
fonts that ship with macOS and Windows: Tahoma
([`theme_win98()`](https://mjfrigaard.github.io/fmggp2/reference/theme_win98.md)),
Verdana
([`theme_napster()`](https://mjfrigaard.github.io/fmggp2/reference/theme_napster.md)),
Arial and Impact
([`theme_blockbuster()`](https://mjfrigaard.github.io/fmggp2/reference/theme_blockbuster.md)),
Trebuchet MS
([`theme_spice()`](https://mjfrigaard.github.io/fmggp2/reference/theme_spice.md)),
Comic Sans MS
([`theme_beanie()`](https://mjfrigaard.github.io/fmggp2/reference/theme_beanie.md)),
and Arial and Arial Black
([`theme_n64()`](https://mjfrigaard.github.io/fmggp2/reference/theme_n64.md)).
When a font file can’t be found, the theme falls back to `"sans"`, so
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
