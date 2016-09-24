completos<- function(directorio="C:/Users/Usuario/Documents/GitHub/Programacion_Actuarial_lll_OT16/caso1/specdata", id=1:332){
  vec <- vector("numeric",0)
  vec2<-vector("numeric",0)
  contador<-1
  setwd("C:/Users/Usuario/Documents/GitHub/Programacion_Actuarial_lll_OT16/caso1/specdata")
  for(i in id){
    nuevoid<-formatC(i,width = 3, flag = "0")
    leer<-read.csv(paste(nuevoid, ".csv",sep=""))
    
    completos<-complete.cases(leer)
    casos<-data.frame(completos)
    nobs<-length(casos[casos==TRUE])
    nobs
    vec[contador]<-nobs
    vec2[contador]<-i
    contador<-contador+1
  }
   tabla<-data.frame(id=vec2,nobs=vec) 
    tabla
}

completos("directorio",1:2)
completos("directorio",2)
