CompleteC <- function(direc="C:/Users/Karthik/Downloads/specdata/", id = 1:332)
{
        x <- sprintf("C:/Users/Karthik/Downloads/specdata/%03d.csv", id)
        
        for( i in id) {
                dt <- read.csv(x[i])
                print ( paste( sprintf("%03d.csv", i), sum(complete.cases(dt)), sep = " ----- "))
                ##df <- rbind(i,sum(complete.cases(dt)))
        }
        
        df
}