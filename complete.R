complete <- function(directory, id= 1:332){
  ## Directory:
  dir <- paste("C:/Users/leskinner/Documents/Coursera/rprog_data_specdata/",directory,sep = "")
  completa <- data.frame(ncol=2,nrow= (id[length(id)]-id[1]+1))
  
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
    num <- nrow(clean_frame)
##    new <-cbind(id[i],num)
    completa[i,] <- cbind(id[i],num)
  }
  output <- data.frame(completa)
  cnames <- c("id","nobs")
  colnames(output) <- cnames
  return(output)
}