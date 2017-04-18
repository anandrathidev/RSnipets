# Transpose a data frame 
# that is rows becomes columns and colnames get replaced by rownames 
tDF <- function( x ) {
  x.T <- t(x[,2:ncol(x)])
  colnames(x.T) <- x[,1] 
  return(as.data.frame(x.T))
}

# from List of List to data frame 
listoflist2df <- function( x ) {
  return(do.call(rbind,lapply(x,data.frame)))
}
