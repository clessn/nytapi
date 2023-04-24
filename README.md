
<!-- README.md is generated from README.Rmd. Please edit that file -->

# nytapi

<!-- badges: start -->
<!-- badges: end -->

The goal of nytapi is to get data from the New York Times API.

## Installation

You can install the development version of nytapi from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("clessn/nytapi")
```

## Usage

1.  Get API key from
    [developer.nytimes.com/](https://developer.nytimes.com/)
2.  Save the access token to R environ using `usethis::edit_r_environ()`

``` r
# .Renviron
NYT_TOKEN = "tokenstring"
```

3.  Use key in functions

``` r
search_articles(query = "Wikipedia", key = Sys.getenv("GITHUB_TOKEN"))
```
