corr <- function(directory, threshold = 0) {
  
  ## directory
  dir <- paste("C:/Users/leskinner/Documents/Coursera/rprog_data_specdata/",directory,sep = "")
  
  ## initializing the correlation matrix
  correlationVector = NULL 
  
  for (i in 1:332){
    
    if (i<10) {
      dir2 <- paste("/00",i,".csv",sep = "")
    } else if (i<100){
      dir2 <- paste("/0",i,".csv",sep = "")
    } else {
      dir2 <- paste("/",i,".csv",sep = "")
    }
    
 ## getting rid of all the "NA" values and, consequently, all the non-complete ovservations (the ones with at least one NA in row)
 data <- read.csv(paste(dir,dir2,sep=""))
 data = na.omit(data)
 
 if (nrow(data) > threshold) {
   correlationVector = c(correlationVector, cor(data[,2], data[,3]))
 }
 
}
  
##  setwd("..")  # reseting working directory path
  return (correlationVector)
}
