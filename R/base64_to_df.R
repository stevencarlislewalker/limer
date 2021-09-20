#' Convert base64 encoded data to a data frame
#'
#' This function converts raw base64 results into a data frame.
#' @param x \dots
#' @param args_read_csv \dots
#' @importFrom utils read.csv
#' @export
#' @examples \dontrun{
#' base64_to_df()
#' }

base64_to_df <- function(x, args_read_csv = list(
  stringsAsFactors = FALSE, sep = ";")) {
  raw_csv <- rawToChar(base64enc::base64decode(x))

  return(do.call(
    "read.csv",
    c(list(textConnection(raw_csv)), args_read_csv)
  ))
}
