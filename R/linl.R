#' LaTeX Letter format
#'
#' A format suitable for standard letters, along a with a number of
#' helpful extensions
#'
#' @inheritParams rmarkdown::pdf_document
#' @param ... Additional arguments to \code{rmarkdown::pdf_document}
#' @param keep_tex A boolean toggle to select whether intermediate
#' LaTeX files are to be kept, defaults to \code{FALSE}
#' @return R Markdown output format to pass to
#' \code{\link[rmarkdown:render]{render}}
#'
#' @examples
#' \dontrun{
#' rmarkdown::draft("MyLetter.Rmd", template = "pdf", package = "linl")
#' rmarkdown::render("MyLetter.Rmd")
#' }
#'
#' @section Letter features:
#' Various aspects of the letter can be customized by setting the following
#' variables in the document metadata:
#'
#' \describe{
#'   \item{\code{address}}{Name and address of the recipient; takes a list for a multi-line address.}
#'   \item{\code{author}}{Writer of the letter; can take a list for a multi-line signature.}
#'   \item{\code{blockquote}}{Changes style of block quotations to match \href{https://getbootstrap.com/docs/3.3/css/#type-blockquotes}{bootstrap} (requires the \href{https://www.ctan.org/pkg/mdframed}{\code{mdframed}} package).}
#'   \item{\code{cc}}{Recipients to be carbon-copied; can take a list for multiple recipients.}
#'   \item{\code{closing}}{Text for the complementary close.}
#'   \item{\code{closing-indentation}}{Amount for closing signature block to be intended from left margin.}
#'   \item{\code{date}}{Custom date, and the current date will be automatically inserted if not specified.}
#'   \item{\code{encl}}{List of enclosures.}
#'   \item{\code{inline-links}}{Print links as standard inline hyperlinks rather than footnotes.}
#'   \item{\code{opening}}{Text for the salutation.}
#'   \item{\code{letterhead},\code{letterfoot}}{Image file to be used as header or footer (requires the \href{https://www.ctan.org/pkg/wallpaper}{\code{wallpaper}} package), applied only to the first page.}
#'   \item{\code{letterhead-side},\code{letterfoot-side}}{Specifies which side of the page the header/footer is aligned to. Must be either \code{L} (left, the default) or \code{R} (right).}
#'   \item{\code{letterhead-scale},\code{letterfoot-scale}}{Scale the header/footer to fraction of page width or height (depending on the file's aspect ratio).}
#'   \item{\code{ps}}{Text to be added at the end of the letter as a postscript.}
#'   \item{\code{return-address}}{Address of the sender: takes a list to allow a multi-line address.}
#'   \item{\code{signature}}{Image file for a signature.}
#'   \item{\code{signature-before}, \code{signature-after}}{Allows adjustment of vertical space surrounding signature.}
#' }
#'
#' The vignette source shows several of these options in use.
#'
#' @seealso
#' \code{\link[pinp]{pinp}}
#' @references
#' JJ Allaire, R Foundation, Hadley Wickham, Journal of Statistical Software, Yihui Xie, Ramnath
#' Vaidyanathan, Association for Computing Machinery, Carl Boettiger, Elsevier, Karl Broman,
#' Kirill Mueller, Bastiaan Quast, Randall Pruim, Ben Marwick, Charlotte Wickham, Oliver Keyes
#' and Miao Yu (2017). rticles: Article Formats for R Markdown. R package version 0.4.1.
#' \url{https://CRAN.R-project.org/package=rticles}
#'
#' JJ Allaire, Joe Cheng, Yihui Xie, Jonathan McPherson, Winston Chang, Jeff Allen, Hadley
#' Wickham, Aron Atkins, Rob Hyndman and Ruben Arslan (2017). rmarkdown: Dynamic Documents for R.
#' R package version 1.6. \url{https://CRAN.R-project.org/package=rmarkdown}
#'
#' Yihui Xie (2017). knitr: A General-Purpose Package for Dynamic Report Generation in R. R
#' package version 1.17.
#'
#' Aaron Wolen (2017). pandoc-letter. GitHub Repository. \url{https://github.com/aaronwolen/pandoc-letter}.
linl <- function(..., keep_tex = FALSE) {

    template <- system.file("rmarkdown", "templates", "pdf", "resources", "template.tex",
                            package="linl")
    base <- inherit_pdf_document(..., template = template, keep_tex = keep_tex)

    base$knitr$opts_chunk$prompt <- FALSE 	# changed from TRUE
    base$knitr$opts_chunk$comment <- '# '	# default to one hashmark
    base$knitr$opts_chunk$highlight <- TRUE  	# changed as well

    base
}


# Call rmarkdown::pdf_documet and mark the return value as inheriting pdf_document
inherit_pdf_document <- function(...) {
    fmt <- rmarkdown::pdf_document(...)
    fmt$inherits <- "pdf_document"
    fmt
}

knitr_fun <- function(name) utils::getFromNamespace(name, 'knitr')

output_asis <- knitr_fun('output_asis')


