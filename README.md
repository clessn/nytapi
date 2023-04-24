
<!-- README.md is generated from README.Rmd. Please edit that file -->

# nytapi

<!-- badges: start -->

[![Codecov test
coverage](https://codecov.io/gh/clessn/wikirest/branch/main/graph/badge.svg)](https://app.codecov.io/gh/clessn/wikirest?branch=main)
[![R-CMD-check](https://github.com/clessn/nytapi/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/clessn/nytapi/actions/workflows/R-CMD-check.yaml)
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
NYT_KEY = "keystring"
```

3.  Use key in functions

``` r
search_articles(query = "Wikipedia", key = Sys.getenv("NYT_KEY"))
```

## Examples

### Search articles

``` r
library("nytapi")

json <- search_articles(query = "Wikipedia", key = Sys.getenv("NYT_KEY"))

# Preview of first article
article <- json[["response"]][["docs"]][[1]]

article[["abstract"]]
#> [1] "Women are being removed from the list of “American Novelists” and put into their own category. Moves like that make it harder and slower for women to gain equality in the literary world."
article[["web_url"]]
#> [1] "https://www.nytimes.com/2013/04/28/opinion/sunday/wikipedias-sexism.html"
article[["snippet"]]
#> [1] "Women are being removed from the list of “American Novelists” and put into their own category. Moves like that make it harder and slower for women to gain equality in the literary world."
```

### Get most viewed articles

``` r
json <- get_most_viewed(key = Sys.getenv("NYT_KEY"))

# Preview of first article
article <- json[["results"]][[1]]

article[["title"]]
#> [1] "Gunman Kills 5 Co-Workers at Louisville Bank on Livestream, Police Say"
article[["byline"]]
#> [1] "By Kevin Williams, Amanda Holpuch and Campbell Robertson"
article[["published_date"]]
#> [1] "2023-04-10"
```

### Get most e-mailed articles

``` r
json <- get_most_emailed(key = Sys.getenv("NYT_KEY"))

# Preview of first article
article <- json[["results"]][[1]]

article[["title"]]
#> [1] "Whatever the Problem, It’s Probably Solved by Walking"
article[["byline"]]
#> [1] "By Andrew McCarthy"
article[["published_date"]]
#> [1] "2023-03-25"
```

## Notes

For API documentation, terms of service and licensing information, see
[developer.nytimes.com](https://developer.nytimes.com/).

nytapi is not afiliated with The New York Times.
