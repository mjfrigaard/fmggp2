# Book helpers

The chapters in [*ggplot2: field
manual*](https://mjfrigaard.github.io/fm-ggp2/) use a few small helpers
for callout boxes and filtering. This vignette covers what each one
returns and how to use it in a Quarto chunk.

``` r

library(fmggp2)
```

## Callout boxes

[`co_box()`](https://mjfrigaard.github.io/fmggp2/reference/co_box.md)
and
[`status()`](https://mjfrigaard.github.io/fmggp2/reference/status.md)
print the markdown for a [Quarto
callout](https://quarto.org/docs/authoring/callouts.html). They return
nothing; the markdown is the side effect. That means you’ll need
`results: asis` in the chunk options; otherwise, Quarto shows the raw
markdown instead of the callout.

### `co_box()`

The `color` argument picks the callout type: `"b"` (note), `"g"` (tip),
`"r"` (important), `"o"` (warning), or `"y"` (caution).

``` r

co_box(color = "b", header = "Note", contents = "Simulated data is reproducible with `set.seed()`.")
#> 
#> 
#> :::: {.callout-note collapse='false' appearance='default'}
#> 
#> ## [Note]{style='font-weight: bold; font-size: 1.10em;'}
#> 
#> ::: {style='font-size: 1.05em; color: #282b2d;'}
#> 
#> 
#> Simulated data is reproducible with `set.seed()`.
#> 
#> ::: 
#> 
#> ::::
```

With `results: asis`, the same call renders as a callout:

> **Note**
>
> Simulated data is reproducible with
> [`set.seed()`](https://rdrr.io/r/base/Random.html).

Set `fold = TRUE` to collapse the callout and `look` to `"simple"` or
`"minimal"` to change its appearance.

### `status()`

[`status()`](https://mjfrigaard.github.io/fmggp2/reference/status.md)
marks how complete a chapter is. The `type` argument is one of
`"polish"`, `"dev"`, `"draft"`, or `"complete"`.

``` r

status("complete")
```

> **Tip**
>
> ***This graph is largely complete and just needs final proof
> reading.***

## Not in

`%nin%` is the negation of `%in%`. I’ve found it reads more naturally
than `!(x %in% y)` inside `dplyr::filter()`.

``` r

c("AOL", "Napster", "Netscape") %nin% c("Napster")
#> [1]  TRUE FALSE  TRUE
```
