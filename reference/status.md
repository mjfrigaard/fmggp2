# Chapter status callout

Writes a Quarto callout describing how complete a chapter is. Use it in
a chunk with `results: asis`.

## Usage

``` r
status(type)
```

## Arguments

- type:

  One of `"polish"`, `"dev"`, `"draft"`, or `"complete"`.

## Value

Called for its side effect: the callout markdown is printed with
[`cat()`](https://rdrr.io/r/base/cat.html).

## Examples

``` r
status("complete")
#> 
#> ::: {.callout-tip appearance='simple' icon=false}
#> ***This graph is largely complete and just needs final proof reading.*** 
#> :::
```
