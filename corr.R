Corr <- function(direc=1, thr = 0)
{
        ##x <- sprintf("C:/Users/Karthik/Downloads/specdata/%03d.csv", direc)
        
        ##for( i in id) {
        dt <- read.csv(sprintf("C:/Users/Karthik/Downloads/specdata/%03d.csv", direc))
        ##print ( paste( sprintf("%03d.csv", i), sum(complete.cases(dt)), sep = " ----- "))
        m <- complete.cases((dt$sulfate & dt$nitrate)  > thr )
        cor(m[sulfate],m[nitrate], use = "pairwise.complete.obs")
        ##df <- rbind(i,sum(complete.cases(dt)))
        ##}
        
        
}