#install.packages("usethis")
#install.packages("devtools")
usethis::create_package("/Users/denisabdullin/Projects/assistr")

usethis::use_package("dplyr")
usethis::use_package("tidyr")
usethis::use_package("lubridate")
usethis::use_package("readr")

usethis::use_pipe()

# build package -----------------------------------------------------------
devtools::document()
devtools::install(upgrade = "never", build_vignettes = TRUE)

# website -----------------------------------------------------------------
# usethis::use_pkgdown()
# usethis::use_readme_rmd()
devtools::build_readme()
pkgdown::build_site(lazy = FALSE, new_process = TRUE)

# github actions
# Run once
usethis::use_github_action("pkgdown")
usethis::use_github_action("test-coverage")
usethis::use_github_action_check_standard()
usethis::use_lifecycle_badge(stage = "experimental")

# devtools checks and test ---------------------------------------------------------
devtools::test()

devtools::check()
#rhub::check_for_cran()

# code coverage
covr::report()

# release -----------------------------------------------------------------
usethis::use_release_issue()

# licence -----------------------------------------------------------------
usethis::use_mit_license("Denis Abdullin")

# vignettes ---------------------------------------------------------------
usethis::use_vignette(name = "intro", title = "Getting Started")

# CRAN --------------------------------------------------------------------
usethis::use_cran_badge()
