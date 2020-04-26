#' Standard Deviation of every attribute in a dataframe
#'
#' Takes in the dataframe as input and print out the column name and its Standard Deviation value
#' If the column is not a numeric attribute then it throws NA value for Standard Deviation of that column
#' @param A dataframe
#' @return The column name and its Standard Deviation
#' @export

std_dev_df <- function(x)
{
  print("Standard Deviaton of each column")
  for (i in colnames(x))
  {
    if(class(iris[,i]) =="factor") try(print(paste0(i,": not a numeric column")),silent=TRUE)
    else print(paste0(i, ":",round(sd(x[,i]),2)))
  }
}
