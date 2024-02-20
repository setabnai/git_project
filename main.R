# main.R

#library("here")
#source(here("ignore.R"))


library("gert")
library("usethis")
library("gitcreds")


main <- function() {

    usethis::git_sitrep()

    # global defaults to git ignore
    usethis::git_vaccinate()

    gitcreds::gitcreds_set()
    # gitcreds::gitcreds_delete()


    usethis::use_git()
    usethis::use_github()

    # for this repo
    usethis::git_default_branch_rename(from = "master", to = "main")

    # for future repos
    # usethis::git_default_branch_configure()

}
