# Quarto callout box

Writes the markdown for a Quarto callout box. Use it in a chunk with
`results: asis`.

## Usage

``` r
co_box(
  color,
  header,
  contents = "Your text",
  size = "1.05",
  hsize = "1.10",
  fold = FALSE,
  look = "default"
)
```

## Arguments

- color:

  One of `"b"` (note), `"g"` (tip), `"r"` (important), `"o"` (warning),
  or `"y"` (caution).

- header:

  Callout header text.

- contents:

  Callout body text.

- size:

  Body font size (em).

- hsize:

  Header font size (em).

- fold:

  Logical; collapse the callout?

- look:

  One of `"default"`, `"simple"`, or `"minimal"`.

## Value

Called for its side effect: the callout markdown is printed with
[`cat()`](https://rdrr.io/r/base/cat.html).

## Examples

``` r
co_box(color = "b", header = "Note", contents = "Some text")
#> 
#> 
#> :::: {.callout-note collapse='false' appearance='default'}
#> 
#> ## [Note]{style='font-weight: bold; font-size: 1.10em;'}
#> 
#> ::: {style='font-size: 1.05em; color: #282b2d;'}
#> 
#> 
#> Some text
#> 
#> ::: 
#> 
#> ::::
```
