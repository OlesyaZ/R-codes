pollutantmean <- function(directory, pollutant, id = 1:332) {
         ## 'directory' is a character vector of length 1 indicating
         ## the location of the CSV files
   filepath<-paste(c("/Users/shurik/Documents/Olesya/RProjects/",directory,"/"),collapse="")
   setwd(filepath)
   filename<-dir()
     n<-0
     sum_pol<-0
     num_pol<-0
     for (i in id) {
          datas <- read.csv(filename[i])
         
          ## 'pollutant' is a character vector of length 1 indicating
          ## the name of the pollutant for which we will calculate the
          ## mean; either "sulfate" or "nitrate".
        
         sum_pol<-sum_pol+ sum(datas[[pollutant]][!is.na(datas[[pollutant]])])
         m<-mean(datas[[pollutant]],na.rm=TRUE)
         num_pol<-num_pol+length(datas[[pollutant]][!is.na(datas[[pollutant]])])
         mean_pol<-sum_pol/num_pol   
      ##print(m)
      ## print(mean_pol)
      }
   return(mean_pol,digi?ts=4)
}
