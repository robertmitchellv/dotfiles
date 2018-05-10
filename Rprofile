# --> My r-profile settings

## --> tell R where to find my packages
.libPaths(c("~/code/bin/R/packages", .libPaths() ) )

## --> options
options(repos = c(CRAN = "http://cran.rstudio.com"))
options(stringsAsFactors = FALSE)
options(editor = "vim")
options(prompt = "--> ")
options(continue = "···  ")
options(shiny.reactlog=TRUE)

# timezone
Sys.setenv(TZ="America/Los_Angeles")

## --> functions
q <- function (save = "no", ...) {
  quit(save = save, ...)
}
