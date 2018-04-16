meanPol <- function(direc="C:/Users/Karthik/Downloads/specdata/", pol="sulfate", id = 1:332)
{
        ##print(paste(direc,toString(id), sep = "",collapse = ""))
        ##print(as.character(id))
        x <- sprintf("C:/Users/Karthik/Downloads/specdata/%03d.csv", id)
        
        ##print (x[1])
        for( i in id) {
                dt <- read.csv(x[i])
                print ( paste( sprintf("%03d.csv", id), pol, colMeans(dt[pol],na.rm=TRUE), sep = " ----- "))
        }
}