
R version 3.2.5 (2016-04-14) -- "Very, Very Secure Dishes"
Copyright (C) 2016 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

> x <- 1:4;y <- 2:3
> x+y
[1] 3 5 5 7
> w <- x+y
> w
[1] 3 5 5 7
> class(w)
[1] "integer"
> s <- list(2,"a","b",TRUE)
> s[[2]]
[1] "a"
> t <- c(17,14,4,5,13,12,10)
> t(t>10)
[,1] [,2]  [,3]  [,4] [,5] [,6]  [,7]
[1,] TRUE TRUE FALSE FALSE TRUE TRUE FALSE
> t(t>10)==4
[,1]  [,2]  [,3]  [,4]  [,5]  [,6]  [,7]
[1,] FALSE FALSE FALSE FALSE FALSE FALSE FALSE
> read.csv("hw1_data.csv")
Error in file(file, "rt") : cannot open the connection
In addition: Warning message:
  In file(file, "rt") :
  cannot open file 'hw1_data.csv': No such file or directory
> quizdata <- read.csv(file="C:\Users\leskinner\Documents\Coursera\hw1_data.csv",header=TRUE,sep=",",colClasses="numeric",nrows=154)
Error: '\U' used without hex digits in character string starting ""C:\U"
> quizdata <- read.csv(file="C:/Users/leskinner/Documents/Coursera/hw1_data.csv",header=TRUE,sep=",",colClasses="numeric",nrows=154)
> View(quizdata)
> quizdata[1,]
Ozone Solar.R Wind Temp Month Day
1    41     190  7.4   67     5   1
> quizdata [1,][2,]
Ozone Solar.R Wind Temp Month Day
NA    NA      NA   NA   NA    NA  NA
> quizdata [c(1,2),]
Ozone Solar.R Wind Temp Month Day
1    41     190  7.4   67     5   1
2    36     118  8.0   72     5   2
> wc(quizdata)
Error: could not find function "wc"
> nrow(quizdata)
[1] 153
> quizdata[c(152,153),]
Ozone Solar.R Wind Temp Month Day
152    18     131  8.0   76     9  29
153    20     223 11.5   68     9  30
> quizdata[47,]
Ozone Solar.R Wind Temp Month Day
47    21     191 14.9   77     6  16
> sum(is.na(quizdata$Ozone))
[1] 37
> bad <- is.na(quizdata$Ozone)
> good <- [!bad]
Error: unexpected '[' in "good <- ["
                                   > good[!bad]
                                   Error: object 'good' not found
                                   > mean(quizdata$Ozone)
                                   [1] NA
                                   > mean(quizdata$Ozone[!bad])
                                   [1] 42.12931
                                   > ## What is the mean of the Ozone column in this dataset? Exclude missing values from this calculation.