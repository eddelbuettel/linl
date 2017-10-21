## linl [![Build Status](https://travis-ci.org/eddelbuettel/linl.svg)](https://travis-ci.org/eddelbuettel/linl) [![Package-License](http://img.shields.io/badge/license-GPL--3-brightgreen.svg?style=flat)](http://www.gnu.org/licenses/gpl-3.0.html) [![CRAN](http://www.r-pkg.org/badges/version/linl)](https://cran.r-project.org/package=linl) [![Downloads](http://cranlogs.r-pkg.org/badges/linl?color=brightgreen)](http://www.r-pkg.org/pkg/linl)

Linl is not Letter: LaTeX Letters from RMarkdown

### Motivation

The LaTeX Letter class is very useful for simple letters.  As such
letters are also somewhat standardized, they make for excellent
candidates for use by Markdown.

This package leans on earlier work by [Aaron Wolen](http://aaronwolen.com/) in his
[pandoc-letter](https://github.com/aaronwolen/pandoc-letter) repository, and extends it for use from
R via the [rmarkdown](https://cran.r-project.org/package=rmarkdown) package.

### Example

#### Skeleton

The skeleton creates a very simple letter.  This shows the (complete) source on the left and the
rendered pdf on the right:

![](https://eddelbuettel.github.io/linl/skeleton.png)

#### Vignette

The vignette example is a little more featureful and shows how to included a letterhead on-demand,
as well as a signature.  Both of these are driven by simple YAML headers as seen on the left:

![](https://eddelbuettel.github.io/linl/vignette.png)

### Status

The package is working, but not yet on [CRAN](https://cran.r-project.org/).

### Usage 

If the package were on CRAN, you could use the standard 

```r
install.packages("linl")
```

to install it from CRAN, and then use as a Markdown template via RStudio, or use code such as

```r
library(rmarkdown)
draft("myletter.Rmd", template="pdf", package="linl", edit=FALSE)
render("myletter.Rmd")
```

to create a first draft of a new `myletter.Rmd`.

But as it isn't yet on CrAN, despite as of now four days and counting in incoming (which is beyond absurd given 
the package), you can also install it from the [ghrr drat repo](https://ghrr.github.io/drat/) via one additional
line as in

```r
drat:::addRepo("ghrr")     # registers the ghrr drat repo
install.packages("linl")   # installs linl from ghrr
```

Once installed, the above code examples work of course as expected.

### Requirements

Beyond the R package dependencies, a working `pandoc` binary is needed. RStudio installs
its own copy, otherwise do what is needed on your OS (_i.e._, something like `sudo apt-get
install pandoc pandoc-citeproc`).

### Authors

Dirk Eddelbuettel and Aaron Wolen.

### License

GPL-3 for this package, the work in [pandoc-letter](https://github.com/aaronwolen/pandoc-letter), 
as well as underlying Pandoc template.
