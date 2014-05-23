complete <- function(directory, id) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files

  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
       filepath<-paste(c("/Users/shurik/Documents/Olesya/RProjects/",directory,"/"),collapse="")
       setwd(filepath)
       final<-data.frame()
       filename<-dir()
       for (i in id) {
         datas <- read.csv(filename[i])
       good<-complete.cases(datas)
        nobs<-sum(good)
        ##print(nobs)
       final<-rbind(final,data.frame(id=i,nobs=nobs))
       }
       return(final)
     
}