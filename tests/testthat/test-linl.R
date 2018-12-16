context("Letter Options")

test_that("Base letter", {
    skip_on_cran()
    frontmatter$plainquote <- TRUE
    input <- build_rmd(frontmatter, body)
    output <- render(input, output_dir = dirname(input), quiet = quiet)
    expect_true(file.exists(output))
})

test_that("Styled blockquotes", {
    skip_on_cran()
    input <- build_rmd(frontmatter, body)
    output <- render(input, output_dir = dirname(input), quiet = quiet)
    expect_true(file.exists(output))
})

test_that("PDF letterhead", {
    skip_on_cran()
    frontmatter$letterhead <- normalizePath("resources/letterhead.pdf")
    input <- build_rmd(frontmatter, body)
    output <- render(input, output_dir = dirname(input), quiet = quiet)
    expect_true(file.exists(output))
})

test_that("no option clash with colorlinks disabled (#19)", {
    skip_on_cran()
    frontmatter$letterhead <- normalizePath("resources/letterhead.pdf")
    frontmatter$colorlinks <- FALSE
    input <- build_rmd(frontmatter, body)
    output <- render(input, output_dir = dirname(input), quiet = quiet)
    expect_true(file.exists(output))
})
