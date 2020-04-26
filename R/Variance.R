
#' Variance of every attribute in a dataframe
#'
#' Takes in the dataframe as input and print out the column name and its Variance value
#' If the column is not a numeric attribute then it throws NA value for Variance of that column
#' @param A dataframe
#' @return The column name and its Variance
#' @export

var_df <- function(x)
{
  print("Variance of each column")
  for (i in colnames(x))
  {
    if(class(iris[,i]) =="factor") try(print(paste0(i,": not a numeric column")),silent=TRUE)
    else print(paste0(i, ":",(sd(x[,i]))**2))
  }
}
