# --> My r-profile settings

## --> tell R where to find my packages
.libPaths(c("~/code/bin/R/packages", .libPaths() ) )

## --> options
options(
  # use RStudio's CRAN 
  repos = c(CRAN = "https://cran.rstudio.com"),
  
  # vim in editor
  editor = "vim",
  
  # I like the prompt to look this way
  prompt = " ==> ",
  continue = " ···  ",
  
  # for the awesome shiny tool
  shiny.reactlog=TRUE,
  
  # terminal colors
  crayon.enabled = TRUE,
  crayon.colors = 256,

  # for a list of supported color schemes, default scheme is "native"
  rtichoke.color_scheme = "native",

  # either  `"emacs"` (default) or `"vi"`.
  rtichoke.editing_mode = "vi",

  # indent continuation lines
  # turn this off if you want to copy code without the extra indentation;
  # but it leads to less elegent layout
  rtichoke.indent_lines = TRUE,

  # auto match brackets and quotes
  rtichoke.auto_match = TRUE,

  # auto indentation for new line and curly braces
  rtichoke.auto_indentation = TRUE,
  rtichoke.tab_size = 4,

  # pop up completion while typing
  rtichoke.complete_while_typing = TRUE,
  # timeout in seconds to cancel completion if it takes too long
  # set it to 0 to disable it
  rtichoke.completion_timeout = 0.05,

  # automatically adjust R buffer size based on terminal width
  rtichoke.auto_width = TRUE,

  # insert new line between prompts
  rtichoke.insert_new_line = TRUE,

  # when using history search (ctrl-r/ctrl-s in emacs mode), do not show duplicate results
  rtichoke.history_search_no_duplicates = FALSE,

  # custom prompt for different modes
  rtichoke.prompt = "\033[0;34mR--> \033[0m ",
  rtichoke.shell_prompt = "\033[0;31m#! ==> \033[0m ",
  rtichoke.browse_prompt = "\033[0;33mBrowse[{}]>\033[0m ",

  # supress the loading message for reticulate
  rtichoke.suppress_reticulate_message = FALSE,
  # enable reticulate prompt and trigger `~`
  rtichoke.enable_reticulate_prompt = TRUE 

)

## --> timezone
Sys.setenv(TZ="America/Los_Angeles")

## --> functions
q <- function (save = "no", ...) {
  quit(save = save, ...)
}
