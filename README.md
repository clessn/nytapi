
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
search_articles(query = "Wikipedia", key = Sys.getenv("NYT_TOKEN"))
```

## Examples

### Search articles

``` r
library("nytapi")

resp <- search_articles(query = "Wikipedia", key = Sys.getenv("NYT_TOKEN"))

json <- resp |>
  httr2::resp_body_json()

article <- json[["response"]][["docs"]][[1]]

article[["abstract"]]
#> [1] "Women are being removed from the list of “American Novelists” and put into their own category. Moves like that make it harder and slower for women to gain equality in the literary world."
article[["web_url"]]
#> [1] "https://www.nytimes.com/2013/04/28/opinion/sunday/wikipedias-sexism.html"
article[["snippet"]]
#> [1] "Women are being removed from the list of “American Novelists” and put into their own category. Moves like that make it harder and slower for women to gain equality in the literary world."
```
