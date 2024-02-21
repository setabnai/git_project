# main.R

#library("here")
#source(here("ignore.R"))


library("usethis")
library("gert")
library("gitcreds")

# setup ----

#' assumes a github account
#'
#'
setup <- function() {

    usethis::git_sitrep(tool = "git")
    usethis::git_sitrep(tool = "github")

    usethis::git_sitrep(tool = "git", scope = "project")
    usethis::git_sitrep(tool = "github", scope = "project")

    # global defaults to git ignore
    usethis::git_vaccinate()

    gitcreds::gitcreds_set()
    # gitcreds::gitcreds_delete()
    gitcreds::gitcreds_get()


    usethis::use_git()
    usethis::use_github()

    # for this repo
    usethis::git_default_branch_rename(from = "master", to = "main")

    # for future repos
    # usethis::git_default_branch_configure()

    # slack and government etc
    #
    # https://join.slack.com/t/nhsrcommunity/shared_invite/zt-2cxxtn37a-LIR0~axa4P8VJE2nDhtwxw
    # https://nhs-pycom.net/

    # licenses
    # https://choosealicense.com/
    usethis::use_gpl3_license()
}


# main ----

main <- function() {

}
