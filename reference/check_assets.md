# Check Assets in Specified Directory

Checks a directory for the required assets, relative to the fmggp2
package's assets directory.

## Usage

``` r
check_assets(dir, include_path = FALSE, recursive = FALSE)
```

## Arguments

- dir:

  The directory path to check for required assets.

- include_path:

  Logical; if `TRUE`, the full names of directories are included.

- recursive:

  Logical; if `TRUE`, the directory check is recursive.

## Value

`TRUE` if the assets in `dir` match the package's assets. Otherwise, it
lists the missing font files and tells the user how to install them.

## Examples

``` r
check_assets(dir = "path/to/assets")
#> Font not included in /home/runner/work/_temp/Library/fmggp2//assets.
#> ℹ Download the 'path/to/assets' .ttf files
#> ℹ and install with `extrafont::font_import()`
```
