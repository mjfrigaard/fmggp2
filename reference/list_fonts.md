# List Available Fonts

Lists all TrueType font files available in the fmggp2 package's assets
directory.

## Usage

``` r
list_fonts(include_path = FALSE)
```

## Arguments

- include_path:

  Logical; if TRUE, the full paths of font files are returned.

## Value

A character vector containing the names of the font files. If
include_path is TRUE, the paths will be included.

## Examples

``` r
list_fonts()
#> [1] "Ubuntu-Bold.ttf"         "Ubuntu-BoldItalic.ttf"  
#> [3] "Ubuntu-Italic.ttf"       "Ubuntu-Light.ttf"       
#> [5] "Ubuntu-LightItalic.ttf"  "Ubuntu-Medium.ttf"      
#> [7] "Ubuntu-MediumItalic.ttf" "Ubuntu-Regular.ttf"     
list_fonts(include_path = TRUE)
#> [1] "/Ubuntu/Ubuntu-Bold.ttf"         "/Ubuntu/Ubuntu-BoldItalic.ttf"  
#> [3] "/Ubuntu/Ubuntu-Italic.ttf"       "/Ubuntu/Ubuntu-Light.ttf"       
#> [5] "/Ubuntu/Ubuntu-LightItalic.ttf"  "/Ubuntu/Ubuntu-Medium.ttf"      
#> [7] "/Ubuntu/Ubuntu-MediumItalic.ttf" "/Ubuntu/Ubuntu-Regular.ttf"     
```
