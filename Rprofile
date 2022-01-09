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
  prompt = "💻📈📊 → ",
  continue = " ···  ",
  
  # for the awesome shiny tool
  shiny.reactlog=TRUE,
  
  # terminal colors
  crayon.enabled = TRUE,
  crayon.colors = 256,

  # for a list of supported color schemes, default scheme is "native"
  radian.color_scheme = "monokai",

  # either  `"emacs"` (default) or `"vi"`.
  radian.editing_mode = "vi",

  # indent continuation lines
  # turn this off if you want to copy code without the extra indentation;
  # but it leads to less elegent layout
  radian.indent_lines = TRUE,

  # auto match brackets and quotes
  radian.auto_match = TRUE,

  # auto indentation for new line and curly braces
  radian.auto_indentation = TRUE,
  radian.tab_size = 4,

  # pop up completion while typing
  radian.complete_while_typing = TRUE,
  # timeout in seconds to cancel completion if it takes too long
  # set it to 0 to disable it
  radian.completion_timeout = 0.05,

  # automatically adjust R buffer size based on terminal width
  radian.auto_width = TRUE,

  # insert new line between prompts
  radian.insert_new_line = TRUE,

  # when using history search (ctrl-r/ctrl-s in emacs mode), do not show duplicate results
  radian.history_search_no_duplicates = FALSE,

  # custom prompt for different modes
  # radian.prompt = "\033[0;34m R ==> \033[0m ",
  radian.shell_prompt = "📂☮️ 💲 → ",
  radian.browse_prompt = "\033[0;33mBrowse[{}]>\033[0m ",

  # supress the loading message for reticulate
  radian.suppress_reticulate_message = FALSE,
  # enable reticulate prompt and trigger `~`
  radian.enable_reticulate_prompt = TRUE 

)

## --> timezone
Sys.setenv(
  TZ="America/Los_Angeles",
  R_MAX_V_SIZE="250Gb"
)

## --> functions
q <- function (save = "no", ...) {
  quit(save = save, ...)
}
