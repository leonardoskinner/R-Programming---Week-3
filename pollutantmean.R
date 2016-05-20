pollutantmean <- function(directory, pollutant, id =1:332) {
  
  ## Directory:
  dir <- paste("C:/Users/leskinner/Documents/Coursera/rprog_data_specdata/",directory,sep = "")
  
  ## id:
  
  cum_pol <- 0
  cum_row <- 0
  
  for (i in seq_along(id)){
    
   if (id[i]<10) {
     dir2 <- paste("/00",id[i],".csv",sep = "")
   } else if (id[i]<100){
     dir2 <- paste("/0",id[i],".csv",sep = "")
   } else {
     dir2 <- paste("/",id[i],".csv",sep = "")
   }
   
    frame <- read.csv(paste(dir,dir2,sep=""))
    clean_frame <- frame[complete.cases(frame),]
    cum_pol <- cum_pol + sum(clean_frame[,pollutant])
    cum_row <- cum_row + nrow(clean_frame)
  }
  
  mean_pol <- cum_pol/cum_row 
  return(mean_pol) 
  
}