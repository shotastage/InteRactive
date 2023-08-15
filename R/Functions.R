use_macos <- function() {
  if (Sys.info()["sysname"] != "Darwin") {
    warning("This script must be executed on macOS. It cannot be run on Windows or Linux.")
    stop("The program was stopped due to an exception handling.")
  }
}

use_platform <- function(platforms) {

}

#' @title Show alert dialog
#' @description \code{os_alert} evoke OS native alert dialog
#'
#' @param msg message
#' @export
#' @examples
#' # os_alert("Hello!")
os_alert <- function(msg) {
  system(paste0("osascript -e 'display dialog \"", msg, "\" buttons {\"OK\"}'"))
}

yes_no_confirm <- function() {
  use_macos()
}

text_input <- function(msg) {
  use_macos()
}
