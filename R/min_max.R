

#' Minimum and Maximum of every attribute in a dataframe
#'
#' Takes in the dataframe as input and print out the column name and its Minimum, maximum value
#' If the column is not a numeric attribute then it throws NA value for value of that column
#' @param A dataframe
#' @return The column name and its Minimum, maximum value
#' @export

min_max_df <- function(x){
  print("Minimum and Maximum value of each column")
  for (i in colnames(x))
  {
    if(class(iris[,i]) =="factor") try(print(paste0(i,": not a numeric column")),silent=TRUE)
    else print(paste0(i, " - min ", min(x[,i]), " , max:",max(x[,i])))
  }
}
