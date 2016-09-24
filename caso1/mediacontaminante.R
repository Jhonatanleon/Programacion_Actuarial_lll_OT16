mediacontaminante<- function(directorio="~/GitHub/Programacion_Actuarial_lll_OT16/caso1/specdata",contaminante= "nitrate", id=1:332){
  setwd("C:/Users/Usuario/Documents/GitHub/Programacion_Actuarial_lll_OT16/caso1/specdata")
   a<-numeric()
   vec<-vector("numeric")
   contador<-1
    suma<-0
    suma1<-0
  for(i in id){
        nuevoid<-formatC(i,width = 3, flag = "0")
        leer<-read.csv(paste(nuevoid, ".csv",sep=""))
        names(leer)
        if (contaminante=="nitrate"){
        x<-c(a,leer$nitrate)
        xx<-na.omit(x)
        suma<-suma+sum(x,na.rm = TRUE)
        suma1<-suma1+length(xx)
        
        } else if (contaminante== "sulfate"){
          x<-c(a,leer$sulfate)
          xx<-na.omit(x)
         suma<-suma+sum(x,na.rm = TRUE)
         suma1<-suma1+length(xx)
        }
      }
        promedio<-suma/suma1
        promedio
        
    }
mediacontaminante("directorio","nitrate",1)
mediacontaminante("directorio","nitrate",2)
mediacontaminante("directorio","nitrate",1:2)

mediacontaminante("directorio","sulfate",3) 
mediacontaminante("directorio","sulfate",1:3) 


     
      
      
      
      
      
      

