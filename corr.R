corr <- function(directory, threshold = 0) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  filepath<-paste(c("/Users/shurik/Documents/Olesya/RProjects/",directory,"/"),collapse="")
  setwd(filepath)
  filename<-dir()
  result<-c()
  cors<-c()
  for (i in 1:332) {
          datas <- read.csv(filename[i]);
          good<-complete.cases(datas);
          nobs<-sum(good);
          if (nobs > threshold)
          {
               x<-datas$sulfate[good];
               y<-datas$nitrate[good];
               cors<-cor(x,y);
               result<-c(result,cors);
          }  
  }
  return(result);
}

      
  ## 'threshold' is a numeric vector of length 1 indicating the
  ## number of completely observed observations (on all
  ## variables) required to compute the correlation between
  ## nitrate and sulfate; the default is 0
  
  ## Return a numeric vector of correlations
