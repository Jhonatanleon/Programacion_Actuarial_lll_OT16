mediacontaminante<- function(directorio="~/GitHub/Programacion_Actuarial_lll_OT16/caso1/specdata",contaminante= "nitrate", id=1:332){
  a<-numeric()
  setwd(directorio)
        if (id<=0){return(paste("no es valido"))
        }
  
  for(i in id){
        nuevoid<-formatC(i,width = 3, flag = "0")
        leer<-read.csv(paste(nuevoid, ".csv",sep=""))
        names(leer)
        if (contaminante=="nitrate"){
        x<-c(a,leer$nitrate)
        } else if (contaminante== "sulfate"){
          x<-c(1,leer$sulfate)
        }
      }
        promedio<-mean(x,na.rm=T)
        promedio
        
    }
mediacontaminante(,"nitrate",1)
mediacontaminante(,"sulfate",3) 

     
      
      
      
      
      
      

