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
#> [1] "PressStart2P-Regular.ttf" "Ubuntu-Bold.ttf"         
#> [3] "Ubuntu-BoldItalic.ttf"    "Ubuntu-Italic.ttf"       
#> [5] "Ubuntu-Light.ttf"         "Ubuntu-LightItalic.ttf"  
#> [7] "Ubuntu-Medium.ttf"        "Ubuntu-MediumItalic.ttf" 
#> [9] "Ubuntu-Regular.ttf"      
list_fonts(include_path = TRUE)
#> [1] "/PressStart2P/PressStart2P-Regular.ttf"
#> [2] "/Ubuntu/Ubuntu-Bold.ttf"               
#> [3] "/Ubuntu/Ubuntu-BoldItalic.ttf"         
#> [4] "/Ubuntu/Ubuntu-Italic.ttf"             
#> [5] "/Ubuntu/Ubuntu-Light.ttf"              
#> [6] "/Ubuntu/Ubuntu-LightItalic.ttf"        
#> [7] "/Ubuntu/Ubuntu-Medium.ttf"             
#> [8] "/Ubuntu/Ubuntu-MediumItalic.ttf"       
#> [9] "/Ubuntu/Ubuntu-Regular.ttf"            
```
