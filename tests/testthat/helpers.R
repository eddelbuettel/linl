# variables ---------------------------------------------------------------
frontmatter <- yaml::read_yaml("resources/frontmatter.yaml")
body <- readLines("resources/body.txt")
quiet <- !interactive()


# helpers -----------------------------------------------------------------

# emit logicals as true/false since yes/no is ignored by rmarkdown
to_lgl <- function(x) structure(ifelse(x, 'true', 'false'), class = "verbatim")

build_rmd <- function(frontmatter, body) {
    stopifnot(is.list(frontmatter) && is.character(body))
    outfile <- tempfile(fileext = ".Rmd")
    writeLines(c(
        "---",
        yaml::as.yaml(frontmatter, handlers = list(logical = to_lgl)),
        "---\n",
        body
    ), outfile)
    return(outfile)
}
