corr<- function(directorio="~/GitHub/Programacion_Actuarial_lll_OT16/caso1/specdata", horizonte=0){
  setwd("C:/Users/Usuario/Documents/GitHub/Programacion_Actuarial_lll_OT16/caso1/specdata")
  vec <- vector("numeric",0)
  
  contador<- 1
  for (i in 1:332){
    
      nuevoid<-formatC(i,width = 3, flag = "0")
      leer<-read.csv(paste(nuevoid, ".csv",sep=""))
    
    completos<-complete.cases(leer)
    casos<-data.frame(completos)
    nobs<-length(casos[casos==TRUE])
      ox<-data.frame(leer)
      xx<-na.omit(ox)
    if(nobs>=horizonte){
      
      correlacion<-cor(xx$sulfate,xx$nitrate)
      vec[contador]<-correlacion
      contador<-contador+1
    }
    
    }
 
  vec
  
   
}

corr("directorio",20)
corr("directorio",0)
corr("directorio",117)
