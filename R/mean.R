



#' Mean of every attribute in dataframe
#'
#' Takes in the dataframe as input and print out the column name and its mean value
#' If the column is not a numeric attribute then it throws NA value for  mean of that column
#' @param A dataframe
#' @return The column name and its mean
#' @export

mean_df<- function(x)
{
  print("Mean of each column")
  for(i in colnames(x)){
    print(paste0(i, ": ", round(mean(x[,i]),2)))
  }
}

