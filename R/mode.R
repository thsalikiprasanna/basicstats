#' Mode of every attribute in dataframe
#'
#' Takes in the dataframe as input and print out the column name and its mode value
#' If the column is not a numeric attribute then it throws NA value for  mode of that column
#' @param A dataframe
#' @return The column name and its mode
#' @export


mode_df <- function(x)
{
  print("Mode of each column")
  for (i in colnames(x))
  {
    uniqv <- unique(x[,i])
    uniqv[which.max(tabulate(match(x[,i], uniqv)))]
    print(paste0(i,':', uniqv[1]))
  }
}
