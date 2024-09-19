#' Use 'devtag' in your package
#'
#' This functions amends DESCRIPTION to set up devtag usage.
#' Call it once when you're setting a new package.
#'
#' @param path character path to the package
#'
#' @return Nothing: called for file system side effects.
#' @export
#'
use_devtag <- function(path = ".") {
  rlang::check_installed("desc")

  cli_alert_info("Registering devtag usage in DESCRIPTION")

  current_roxy <- desc::desc_get("Roxygen", file = path)[[1]]
  if (is.na(current_roxy)) {
      desc::desc_set(
    "Roxygen",
    'list(markdown = TRUE, roclets = c("collate", "rd", "namespace", "devtag::dev_roclet"))'
  )
  } else {
    current <- eval(parse(text = current_roxy))
    new <- current
    new[["roclets"]] <- union(
      current[["roclets"]],
      c("collate", "rd", "namespace", "devtag::dev_roclet")
    )

    new_string <- paste(deparse(new), collapse = "")
    desc::desc_set("Roxygen", new_string, file = path)

  }



  cli_alert_info("Registering devtag build-time dependency in DESCRIPTION")
  desc::desc_set(
    "Config/Needs/build",
    paste_desc(desc::desc_get("Config/Needs/build", file = path), "moodymudskipper/devtag"),
    file = path
  )

}

#' Append value if needed
#'
#' @param x Existing DESCRIPTION field value
#' @param y Value to append
#'
#' @return A character string
#' @dev
#'
#' @examples
#' paste_desc(NA, 1)
#' paste_desc(1, 1)
#' paste_desc(2, 1)
paste_desc <- function(x, y) {
  if (is.na(x)) {
    return(y)
  }

  # ensure this is idempotent
  toString(unique(c(x, y)))
}
