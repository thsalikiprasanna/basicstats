#' Dimensions in a dataframe
#'
#' Takes in the dataframe and prints the number or rows and columns
#' @param A dataframe
#' @return The rows and columns of a dataframe
#' @export


dimensions <- function(x){
  print("Dimensions of Dataframe",dim(x))
}
