
[![Travis build
status](https://travis-ci.com/muschellij2/video.svg?branch=master)](https://travis-ci.com/muschellij2/video)
[![AppVeyor Build
Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/video?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/video)
[![Coverage
status](https://codecov.io/gh/muschellij2/video/branch/master/graph/badge.svg)](https://codecov.io/gh/muschellij2/video)
<!-- README.md is generated from README.Rmd. Please edit that file -->

# video Package:

The goal of `video` is to provide an HTML widget to allow for
incorporating videos in an RMarkdown documents.

## Installation

You can install `video` from GitHub with:

``` r
# install.packages("remotes")
remotes::install_github("muschellij2/video")
```

``` r
library(video)
video("http://vjs.zencdn.net/v/oceans.mp4")
```

![](man/figures/README-unnamed-chunk-1-1.png)<!-- -->
