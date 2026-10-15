# Check Assets in Specified Directory

Verifies the presence of required assets in a specified directory
relative to the fmggp2 package's assets directory.

## Usage

``` r
check_assets(dir, include_path = FALSE, recursive = FALSE)
```

## Arguments

- dir:

  The directory path to check for required assets.

- include_path:

  Logical; if TRUE, the full names of directories are included.

- recursive:

  Logical; if TRUE, the directory check is recursive.

## Value

Returns TRUE if the assets in the specified directory match the
package's assets. If not, it informs about the missing font files and
suggests actions to the user.

## Examples

``` r
check_assets(dir = "path/to/assets")
#> Font not included in /home/runner/work/_temp/Library/fmggp2//assets.
#> ℹ Download the 'path/to/assets' .ttf files
#> ℹ and install with `extrafont::font_import()`
```
