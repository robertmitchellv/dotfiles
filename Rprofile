# --> My r-profile settings

## --> tell R where to find my packages
.libPaths(c("~/code/bin/R/packages", .libPaths() ) )

## --> options
options(repos = c(CRAN = "https://cran.rstudio.com"))
options(stringsAsFactors = FALSE)
options(editor = "vim")
options(prompt = "--> ")
options(continue = "···  ")
options(shiny.reactlog=TRUE)
options(crayon.enabled = TRUE)
options(crayon.colors = 256)

## --> timezone
Sys.setenv(TZ="America/Los_Angeles")

## --> functions
q <- function (save = "no", ...) {
  quit(save = save, ...)
}
