


#' Median of every attribute in a dataframe
#'
#' Takes in the dataframe as input and print out the column name and its median value
#' If the column is not a numeric attribute then it throws NA value for median of that column
#' @param A dataframe
#' @return The column name and its median
#' @export

median_df<- function(x)
{
  print("Median of each column")
  for (i in colnames(x)){
    print(i)
    if(is.factor(x[,i]) || is.data.frame(x[,i])) print("need numeric data")
    if(length(names(x[,i]))) names(x[,i]) <- NULL
    n <- length(x[,i])
    if (n == 0L) return(x[,i][FALSE][NA])
    half <- (n + 1L) %/% 2L
    if(n %% 2L == 1L) print(sort(x[,i], partial = half)[half])
    else print(mean(sort(x[,i], partial = half + 0L:1L)[half + 0L:1L]))
  }
}


