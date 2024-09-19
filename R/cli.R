cli_alert_info <- function(...) {
  if (getOption("devtag.verbosity", "default") == "quiet") {
    return()
  }
  cli::cli_alert_info(...)
}
