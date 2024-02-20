# main.R

#library("here")
#source(here("ignore.R"))


library("gert")
library("usethis")
library("gitcreds")


setup <- function() {

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

    # slack and government etc
    #
    # https://join.slack.com/t/nhsrcommunity/shared_invite/zt-2cxxtn37a-LIR0~axa4P8VJE2nDhtwxw
    # https://nhs-pycom.net/

    # licenses
    # https://choosealicense.com/
    usethis::use_gpl3_license()
}


main <- function() {

}
