completos<- function(directorio="~/GitHub/Programacion_Actuarial_lll_OT16/caso1/specdata", id=1:332){
  setwd(directorio)
  for(i in id){
    nuevoid<-formatC(i,width = 3, flag = "0")
    leer<-read.csv(paste(nuevoid, ".csv",sep=""))
    }
    completos<-complete.cases(leer)
    casos<-data.frame(completos)
    nobs<-length(casos[casos==TRUE])
    nobs
}

completos(,1)
completos(,2)
