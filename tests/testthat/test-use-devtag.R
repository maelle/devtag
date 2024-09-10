test_that("use_devtag() works", {
  withr::local_options(usethis.quiet = TRUE)
  withr::local_options(devtag.verbosity = "quiet")
  pkg_dir <- withr::local_tempdir()
  pkg <- usethis::create_package(
    pkg_dir,
    fields =  list(
    Package = "devtag.test",
    "Authors@R" = utils::person(
      "Jane", "Doe",
      email = "jane@example.com",
      role = c("aut", "cre"),
      comment = c(ORCID = "YOUR-ORCID-ID")
    ),
    Language =  "es",
    License = "MIT + file LICENSE"
  )
  )
  expect_snapshot(use_devtag(pkg_dir))
})

test_that("use_devtag() works", {
  withr::local_options(usethis.quiet = TRUE)
  withr::local_options(devtag.verbosity = "quiet")
  withr::local_options(usethis.quiet = TRUE)
  withr::local_options(devtag.verbosity = "quiet")
  pkg_dir <- withr::local_tempdir()
  pkg <- usethis::create_package(
    pkg_dir,
    fields =  list(
    Package = "devtag.test",
    "Authors@R" = utils::person(
      "Jane", "Doe",
      email = "jane@example.com",
      role = c("aut", "cre"),
      comment = c(ORCID = "YOUR-ORCID-ID")
    ),
    Language =  "es",
    License = "MIT + file LICENSE",
    Roxygen = 'list(markdown = TRUE, roclets = c("collate", "rd", "namespace",
    "igraph.r2cdocs::cdocs_roclet"), packages = "igraph.r2cdocs")'
  )
  )
  expect_snapshot(use_devtag(pkg_dir))

})
